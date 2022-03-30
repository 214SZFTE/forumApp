require('dotenv').config();
const express = require('express');
const app = express();
const mysql=require('mysql');
var cors = require('cors');
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


app.listen(port, () => {
    console.log(`Server listening on ${port}...`);
})