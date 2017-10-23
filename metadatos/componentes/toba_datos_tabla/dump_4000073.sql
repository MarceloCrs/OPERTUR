------------------------------------------------------------
--[4000073]--  personas 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 4
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'opertur', --proyecto
	'4000073', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_tabla', --clase
	'4000005', --punto_montaje
	'dt_personas', --subclase
	'datos/dt_personas.php', --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'personas', --nombre
	NULL, --titulo
	NULL, --colapsable
	NULL, --descripcion
	'opertur', --fuente_datos_proyecto
	'opertur', --fuente_datos
	NULL, --solicitud_registrar
	NULL, --solicitud_obj_obs_tipo
	NULL, --solicitud_obj_observacion
	NULL, --parametro_a
	NULL, --parametro_b
	NULL, --parametro_c
	NULL, --parametro_d
	NULL, --parametro_e
	NULL, --parametro_f
	NULL, --usuario
	'2017-07-22 17:27:42', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 4

------------------------------------------------------------
-- apex_objeto_db_registros
------------------------------------------------------------
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, punto_montaje, ap, ap_clase, ap_archivo, tabla, tabla_ext, alias, modificar_claves, fuente_datos_proyecto, fuente_datos, permite_actualizacion_automatica, esquema, esquema_ext) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	NULL, --max_registros
	NULL, --min_registros
	NULL, --punto_montaje
	'1', --ap
	NULL, --ap_clase
	NULL, --ap_archivo
	'personas', --tabla
	NULL, --tabla_ext
	NULL, --alias
	NULL, --modificar_claves
	'opertur', --fuente_datos_proyecto
	'opertur', --fuente_datos
	'1', --permite_actualizacion_automatica
	NULL, --esquema
	NULL  --esquema_ext
);

------------------------------------------------------------
-- apex_objeto_db_registros_col
------------------------------------------------------------

--- INICIO Grupo de desarrollo 4
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000028', --col_id
	'id_persona', --columna
	'E', --tipo
	'1', --pk
	'personas_id_persona_seq', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000029', --col_id
	'nombre', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'45', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000030', --col_id
	'apellido', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'45', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000031', --col_id
	'dni', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000032', --col_id
	'cuit_cuil', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'0', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000033', --col_id
	'razon_social', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'45', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000034', --col_id
	'fecha_nacim', --columna
	'F', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000073', --objeto
	'4000035', --col_id
	'parent_id_persona', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	NULL, --externa
	'personas'  --tabla
);
--- FIN Grupo de desarrollo 4
