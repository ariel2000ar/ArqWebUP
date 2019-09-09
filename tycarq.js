const express    = require('express');
const moment     = require('moment');
const mysql		 = require('mysql');

const app = express();

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root', 
	password: '', 
	dataBase: 'tycarq'
});
	
connection.connect(function(error){
	if (!!error){
		console.log('Error');
	}else{
		console.log('Estas conectado a la base');
	}
});


app.get('/deportes', async (req, res) => {

    connection.query("SELECT * FROM tycarq.deportes ORDER BY iddeporte", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			console.log(rows);
		}
	});
    //res.json(clients);
});


// start server

app.listen(process.env.PORT || 3000, function () {

    console.log('API andando con express...');

});