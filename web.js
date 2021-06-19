const express = require('express');
const app = express();
const path = require('path');
const exphbs = require('express-handlebars');

/*
DB_NAME=express_devops

HEROKU_APP=adl-express-devops
*/

const { Client } = require('pg');

const client = new Client({
    connectionString: process.env.DATABASE_URL,
    ssl: {
        rejectUnauthorized: false
    }
});

client.connect();



const port = process.env.PORT || 3000;

app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

app.get('/', function(req, res) {
    client.query('SELECT * from item;', (err, res) => {
        if (err) throw err;
        for (let row of res.rows) {
            console.log(JSON.stringify(row));
        }
        client.end();
    });

    res.render('home', {
        name: 'hola!',
    });
});

app.post('/url', function(req, res) {
    req.send('Hola!')
});

app.listen(port, () => console.log(`listening on port ${port}!`));