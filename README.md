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
Deportes:
  Crear,
  Listar todos,
  Listar uno,
  Eliminar

Canales:
  Listar todos,
  Listar uno

Eventos
  Delete
  Listar todos,
  Listar eventos de un deporte,
  Listar eventos de un deporte en un lugar

Lugares
  Crear
  Listar todos,
  Listar uno

## Requests
Deportes
  GET /deportes/
  GET /deportes/id_deporte
  POST /deportes/
  DELETE /deportes/id_deporte

Canales
  GET /canales/
  GET /canales/nro_canal

Lugares
  GET /lugares/
  GET /lugares/id_lugar
  POST /lugares/
  
Eventos
  GET /eventos/
  GET /eventos/deportes/id_deporte
  GET /eventos/deportes/id_deporte/lugares/id_lugares
  DELETE /eventos/id_evento

## Estructura de datos
Deportes
Id_deporte, desc_deporte

Canales
Id_canal, desc_canal, nro_canal

Lugares
id_lugar, desc_lugar, provincia_lugar, pais_lugar, cubierto_lugar

Eventos
id_evento, id_deporte, id_canal, id_lugar, fecha_evento, horadesde, horahasta, desc_evento

