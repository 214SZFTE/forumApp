require('dotenv').config();
const express = require('express');
const app = express();
const mysql = require('mysql');
const path = require('path');
const fs = require('fs');
var cors = require('cors');
var multer = require('multer');
app.use(cors());
app.use(express.json());
const port = process.env.PORT || 3000;

var db = mysql.createPool({
    connectionLimit: 10,
    host: process.env.DBHOST,
    user: process.env.DBUSER,
    password: process.env.DBPASS,
    database: process.env.DBNAME
});

var storage = multer.diskStorage({
    destination: '../Public/uploads/',
    filename: function(req, file, cb) {
        cb(null, file.originalname.replace(path.extname(file.originalname), "") + '-' + Date.now() + path.extname(file.originalname))
    }
})

var upload = multer({ storage: storage })

app.post('/upload', upload.single('file'), (req, res) => {
    //console.log('Uploade Successful ', req.file);
    res.json(req.file.filename);
});

app.post('/login', (req, res) => {
    let data = {
        email: req.body.email,
        pass: req.body.passwd,
        table: req.body.table
    }
    db.query(`SELECT * FROM ${data.table} WHERE email='${data.email}' AND password='${data.pass}'`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// GET ALL RECORDS FROM :table
app.get('/:table', (req, res) => {
    let table = req.params.table;

    db.query(`SELECT * FROM ${table}`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// GET ONE RECORD FROM :table
app.get('/:table/:field/:id', (req, res) => {
    let table = req.params.table;
    let field = req.params.field;
    let id = req.params.id;
    db.query(`SELECT * FROM ${table} WHERE ${field}='${id}'`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// INSERT RECORD TO :table
app.post('/:table', (req, res) => {
    let table = req.params.table;
    let data = req.body;

    let fields = 'id';
    results = Object.keys(data);
    results.forEach(element => {
        fields += ',' + element;
    });

    let str = '';
    results = Object.values(data);
    results.forEach(element => {
        str += ',"' + element + '"';
    });

    db.query(`INSERT INTO ${table} (${fields}) VALUES(null ${str})`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// UPDATE RECORD IN :table
app.patch('/:table/:id', (req, res) => {
    let table = req.params.table;
    let id = req.params.id;
    let data = req.body;

    let str = '';
    fields = Object.keys(data);
    results = Object.values(data);

    for (let i = 0; i < fields.length; i++) {
        str += fields[i] + '="' + results[i] + '",';
    }

    str = str.substring(0, str.length - 1);

    db.query(`UPDATE ${table} SET ${str} WHERE id=${id}`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// DELETE ONE RECORD FROM :table
app.delete('/:table/:id', (req, res) => {
    let table = req.params.table;
    let id = req.params.id;
    db.query(`DELETE FROM ${table} WHERE id=${id}`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// DELETE ALL RECORD FROM :table
app.delete('/:table', (req, res) => {
    let table = req.params.table;
    db.query(`DELETE FROM ${table}`, (err, results) => {
        if (err) throw err;
        res.json(results);
    });
});

// DELETE uploaded File
app.delete('/removeFile/:table/:id', (req, res) => {
    let table = req.params.table;
    let id = req.params.id;
    db.query(`SELECT * FROM ${table} WHERE id=${id}`, (err, results) => {
        let fileName = results[0].avatar_path;
        fs.rm('../Public/uploads/' + fileName, (err) => {
            db.query(`UPDATE user SET avatar_path=null WHERE id=${id}`, (err, results) => {
                res.json(results);
            });
        });
    });
});

app.listen(port, () => {
    console.log(`Server listening on ${port}...`);
})