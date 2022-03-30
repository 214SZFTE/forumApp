require('dotenv').config();
const express = require('express');
const app = express();
var cors = require('cors');
app.use(cors());
app.use(express.json());

app.listen(8080, () => {
    console.log(`Server listening on port 8080...`);
})