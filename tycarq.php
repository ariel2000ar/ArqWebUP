<?php
session_start();
?>
<html>
<body>
<?php
if (isset($_POST["btnEliminar"]))
{
	$deporte = $_POST['iddeporte'];
	
	$curl = curl_init();
	$url = 'http://localhost:3000/deportes/'.$deporte;

	// OPTIONS:
	curl_setopt($curl, CURLOPT_URL, $url);
	curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "DELETE");

    // EXECUTE:
    $result = curl_exec($curl);
    if ($result){
		echo "Deporte ".$deporte." eliminado exitosamente";
    }
	curl_close($curl);
	
	$iniciosesion=0;
}else{
	$iniciosesion=0;
}
?>
<form action="#" method="post">
<?php
	$data = file_get_contents('http://localhost:3000/deportes');
	//echo $data;
	$obj = json_decode($data);
	?>
	<table>	<tr> 
	<th> Codigo </th>
	<th> Descripcion </th>
	</tr>
	<?php
	$max = sizeof($obj);
	for($i = 0; $i < $max;$i++)
	{
		?>
		<tr><td>	
		<?php echo $obj[$i]->id_deporte ?> </td> <td> <?php echo $obj[$i]->desc_deporte ?>
		</td></tr>	
		<?php
	}
?>
	</table>		
	<BR/><BR/>
	<div class="boton"><input type="submit" name="btnAceptar" value="Actualizar"/></div>
	<input type="text" name="iddeporte"><div class="boton"><input type="submit" name="btnEliminar" value="Eliminar"/></div>
</form>
</body>
</html>