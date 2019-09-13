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
POST /canales/X

Lugares
GET /lugares/
GET /lugares/X
POST /lugares/X

## Estructura de datos
Deportes
Id_deporte, desc_deporte

Canales
Id_canal, desc_canal, nro_canal

Lugares
id_lugar, desc_lugar, provincia_lugar, pais_lugar, cubierto_lugar

Eventos
id_evento, id_deporte, id_canal, id_lugar, fecha_evento, horadesde, horahasta, desc_evento

