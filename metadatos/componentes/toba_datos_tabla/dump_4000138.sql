------------------------------------------------------------
--[4000138]--  DT - domicilio 
------------------------------------------------------------

------------------------------------------------------------
-- apex_objeto
------------------------------------------------------------

--- INICIO Grupo de desarrollo 4
INSERT INTO apex_objeto (proyecto, objeto, anterior, identificador, reflexivo, clase_proyecto, clase, punto_montaje, subclase, subclase_archivo, objeto_categoria_proyecto, objeto_categoria, nombre, titulo, colapsable, descripcion, fuente_datos_proyecto, fuente_datos, solicitud_registrar, solicitud_obj_obs_tipo, solicitud_obj_observacion, parametro_a, parametro_b, parametro_c, parametro_d, parametro_e, parametro_f, usuario, creacion, posicion_botonera) VALUES (
	'opertur', --proyecto
	'4000138', --objeto
	NULL, --anterior
	NULL, --identificador
	NULL, --reflexivo
	'toba', --clase_proyecto
	'toba_datos_tabla', --clase
	'4000005', --punto_montaje
	NULL, --subclase
	NULL, --subclase_archivo
	NULL, --objeto_categoria_proyecto
	NULL, --objeto_categoria
	'DT - domicilio', --nombre
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
	'2017-10-28 16:28:46', --creacion
	NULL  --posicion_botonera
);
--- FIN Grupo de desarrollo 4

------------------------------------------------------------
-- apex_objeto_db_registros
------------------------------------------------------------
INSERT INTO apex_objeto_db_registros (objeto_proyecto, objeto, max_registros, min_registros, punto_montaje, ap, ap_clase, ap_archivo, tabla, tabla_ext, alias, modificar_claves, fuente_datos_proyecto, fuente_datos, permite_actualizacion_automatica, esquema, esquema_ext) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	NULL, --max_registros
	NULL, --min_registros
	'4000005', --punto_montaje
	'1', --ap
	NULL, --ap_clase
	NULL, --ap_archivo
	'domicilio', --tabla
	NULL, --tabla_ext
	NULL, --alias
	'0', --modificar_claves
	'opertur', --fuente_datos_proyecto
	'opertur', --fuente_datos
	'1', --permite_actualizacion_automatica
	'public', --esquema
	'public'  --esquema_ext
);

------------------------------------------------------------
-- apex_objeto_db_registros_col
------------------------------------------------------------

--- INICIO Grupo de desarrollo 4
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000070', --col_id
	'id_domicilio', --columna
	'E', --tipo
	'1', --pk
	'domicilio_id_domicilio_seq', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000071', --col_id
	'id_persona', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000072', --col_id
	'id_localidad', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000073', --col_id
	'calle', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'30', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000074', --col_id
	'piso', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'10', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000075', --col_id
	'dpto', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'10', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000076', --col_id
	'monoblock', --columna
	'C', --tipo
	'0', --pk
	'', --secuencia
	'10', --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000077', --col_id
	'nro', --columna
	'E', --tipo
	'0', --pk
	'', --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	'domicilio'  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000078', --col_id
	'id_provincia', --columna
	'E', --tipo
	'0', --pk
	NULL, --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	NULL  --tabla
);
INSERT INTO apex_objeto_db_registros_col (objeto_proyecto, objeto, col_id, columna, tipo, pk, secuencia, largo, no_nulo, no_nulo_db, externa, tabla) VALUES (
	'opertur', --objeto_proyecto
	'4000138', --objeto
	'4000079', --col_id
	'id_pais', --columna
	'E', --tipo
	'0', --pk
	NULL, --secuencia
	NULL, --largo
	NULL, --no_nulo
	'1', --no_nulo_db
	'0', --externa
	NULL  --tabla
);
--- FIN Grupo de desarrollo 4
