# ArqWebUP
Materia Arquitectura WEB

## Nombre de equipo:
Arquitectura UP

## Integrantes:
Ariel Pugliese y Uriel Segaloff

## Descripcion del negocio elegido:
Eventos deportivos, se registran los eventos deportivos con su fecha,
el deporte, el lugar y la cadena que va a transmitir y luego se pueden hacer distintas consultas sobre estos eventos.

## Endpoints
Deportes
  Crear
  Listar

Canales
  Crear
  Listar
  Imagen (logo)
  Modificar (n° de canal)

Eventos
  Crear
  Read
  Delete
  Update
  List

Lugares
  Crear
  Read
  Delete
  List

## Requests
Deportes
GET /deportes/
POST /deportes/X

Canales
GET /canales/
GET /canales/X
PUT /canales/X/image
POST /canales/X

Lugares
GET /lugares/
GET /lugares/X
POST /lugares/X

## Estructura de datos
Deportes
Id_deporte, descripcion

Canales
Id_canal, descripcion, imagen, numero
Lugares

id_lugar, descripcion, calle, altura, localidad, provincia, cubierto(s/n)
¿lugaresxdeporte?

Eventos
id_evento, id_deporte, id_canal, id_lugar, horadesde, horahasta, fecha, descripcion



# ArqWebUP
