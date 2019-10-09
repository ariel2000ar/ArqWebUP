const express    = require('express');
const moment     = require('moment');
const mysql	 = require('mysql');
const bodyParser = require('body-parser');
const app = express();

app.use(bodyParser.json());

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root', 
	password: '', 
	database: 'tpup'
});
	
connection.connect(function(error){
	if (!!error){
		console.log('Error 500 Internal Server Error');
	}else{
		console.log('Estas conectado a la base');
	}
});


//DEPORTE

app.get('/deportes', async (req, res) => {

    connection.query("SELECT * FROM deportes ORDER BY id_deporte", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});	
});


app.post('/deportes', async (req, res) => {
    if (!req.body.desc_deporte){
		res.status(400);
	}else{
		connection.query("INSERT INTO deportes (desc_deporte) VALUES ('"+req.body.desc_deporte+"')", function(error, result){
			if (!!error){
				console.log(error);
			}else{
				result.message = "200. Deporte agregado exitosamente";
				res.json(result);
			}
		});		
	}	
});

app.get('/deportes/:id', async (req, res) => {
    connection.query("SELECT * FROM deportes where id_deporte="+req.params.id, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});


//CANALES
app.get('/canales', async (req, res) => {

    connection.query("SELECT * FROM canales ORDER BY nro_canal", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

app.get('/canales/:nro', async (req, res) => {

    connection.query("SELECT * FROM canales where nro_canal="+req.params.nro, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

//LUGARES
app.get('/lugares', async (req, res) => {

    connection.query("SELECT * FROM tpup.lugares ORDER BY id_lugar", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

app.get('/lugares/:id', async (req, res) => {

    connection.query("SELECT * FROM lugares where id_lugar="+req.params.id, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

//EVENTOS
app.get('/eventos', async (req, res) => {

    connection.query("SELECT * FROM tpup.eventos ORDER BY id_evento", function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

//Eventos por Deporte
app.get('/eventos/deportes/:id', async (req, res) => {

    connection.query("SELECT * FROM tpup.eventos where id_deporte="+req.params.id, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

//Eventos por deporte en un lugar
app.get('/eventos/deportes/:id/lugares/:id2', async (req, res) => {

    connection.query("SELECT * FROM tpup.eventos where id_deporte="+req.params.id+" and id_lugar="+req.params.id2, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			res.json(rows);
		}
	});
});

//Eliminar Evento
app.delete('/eventos/:id', async (req, res) => {

    connection.query("DELETE FROM tpup.eventos where id_evento="+req.params.id, function(error, rows, fields){
		if (!!error){
			console.log(error);
		}else{
			console.log('200, Eliminacion exitosa');
		}
	});
});

// start server
app.listen(process.env.PORT || 3000, function () {
    console.log('API andando con express...');
});

