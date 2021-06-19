const express = require('express');
const app = express();
const path = require('path');
const exphbs = require('express-handlebars');

const port = process.env.PORT || 3000;

app.engine('handlebars', exphbs());
app.set('view engine', 'handlebars');

app.get('/', function(req, res) {
    res.render('home', {
        name: 'hola!',
    });
});

app.post('/url', function(req, res) {
    req.send('Hola!')
});

app.listen(port, () => console.log(`listening on port ${port}!`));