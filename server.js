'use strict';

//Application Dependicies

const express = require('express');
const pg = require('pg');
const cors = require('cors');
const bodyParser = require('body-parser');

//Application Setup

const app = express();
const PORT = process.env.PORT;
const CLIENT_URL = process.env.CLIENT_URL;

//Database Setup
const client = new pg.Client(process.env.DATABASE_URL);
// const client = new pg.Client('postgres://postgres:1234@localhost:5432/books_app');
client.connect();
client.on('error', err => console.error(err));

//API Endpoints
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:true}));
app.use(cors());

app.get('/api/v1/books', (req,res) => {
  client.query(
    'SELECT * FROM books;')
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.get('/api/v1/books/:id', (req, res) => {
  client.query(
    'SELECT * FROM books WHERE book_id=$1;',
    [req.params.id])
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.post('/api/v1/books/', (req, res) => {
  client.query(
    'INSERT INTO books (title, author, isbn, image_url, description) VALUES ($1,$2,$3, $4, $5)',
    [
      req.body.title,
      req.body.author,
      req.body.isbn,
      req.body.image_url,
      req.body.description
    ])
    .then(results => res.send(results.rows))
    .catch(console.error);
});

app.delete('/api/v1/books/:id', (req, res) => {
  client.query(
    'DELETE FROM books WHERE books_id=$1',
    [req.params.id])
    .then(() => res.send('204 No Content'))
    .catch(console.error);
});

app.put('/api/v1/books/:id', (req, res) => {
  client.query(
    `UPDATE books
    SET title=$1, author=$2, isbn=$3, image_url=$4, desciption=$5 
    WHERE book_id=$6`,
    [
      req.body.title,
      req.body.author,
      req.body.isbn,
      req.body.image_url,
      req.body.description,
      req.params.id
    ])
    .then(() => res.send('200 OK'))
    .catch(console.error);
});


//This app.get will need a lot more fleshing out once the database is operational

app.get('*', (req, res) => res.redirect(CLIENT_URL));

app.listen(PORT, () => console.log(`Server listening on ${PORT}`));





