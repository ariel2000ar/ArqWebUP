<?php
session_start();
?>
<html>
<body>
<?php
if (isset($_POST["btnAceptar"]))
{
	$data = file_get_contents('http://localhost:3000/deportes/7');
	//echo $data;
	$obj = json_decode($data);
	echo "Deporte correspondiente al ID 7: ".$obj[0]->desc_deporte;
	$iniciosesion=1;
}else{
	$iniciosesion=0;
}
?>
<?php 
if ($iniciosesion==0)
{ ?>
	<form action="#" method="post">
		<BR/><BR/>
		<div class="boton"><input type="submit" name="btnAceptar" value="Aceptar"/></div>
	</form>
	<?php 
}
?>	
</body>
</html>