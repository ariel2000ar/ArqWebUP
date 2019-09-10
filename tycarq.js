const express    = require('express');
const moment     = require('moment');
const mysql	 = require('mysql');

const app = express();

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root', 
	password: '', 
	dataBase: 'tpup'
});
	
connection.connect(function(error){
	if (!!error){
		console.log('Error');
	}else{
		console.log('Estas conectado a la base');
	}
});


//DEPORTE
app.get('/deportes', async (req, res) => {

    connection.query("SELECT * FROM tpup.deportes ORDER BY id_deporte", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			console.log(rows);
		}
	});
    //res.json(clients);
});

//CANALES
app.get('/canales', async (req, res) => {

    connection.query("SELECT * FROM tpup.canales ORDER BY nro_canal", function(error, rows, fields){
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
