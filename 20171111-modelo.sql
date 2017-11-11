
CREATE SEQUENCE public.empresa_id_empresa_seq;

CREATE TABLE public.empresa (
                id_empresa BIGINT NOT NULL DEFAULT nextval('public.empresa_id_empresa_seq'),
                nombre_empresa VARCHAR NOT NULL,
                cuil_empresa NUMERIC NOT NULL,
                logo_empresa BYTEA NOT NULL,
                telefonos_empresa VARCHAR NOT NULL,
                direccion_empresa VARCHAR NOT NULL,
                correo_empresa VARCHAR NOT NULL,
                CONSTRAINT empresa_pk PRIMARY KEY (id_empresa)
);
COMMENT ON TABLE public.empresa IS 'En esta tabla van colocados los datos de la empresa que opera el sistena.';
COMMENT ON COLUMN public.empresa.telefonos_empresa IS 'es de texto para que puedan completar no solo agregar el numero sino tambien el tipo. 
Ejemplo: Celular +54-93757-673349 // 
  ';
COMMENT ON COLUMN public.empresa.direccion_empresa IS 'En este campo se completa con todos los datos, desde el nombre de la calle hasta el pais.';
COMMENT ON COLUMN public.empresa.correo_empresa IS 'E-mail de la empresa';


ALTER SEQUENCE public.empresa_id_empresa_seq OWNED BY public.empresa.id_empresa;

CREATE SEQUENCE public.excursiones_id_excursion_seq_1;

CREATE TABLE public.excursiones (
                id_excursion BIGINT NOT NULL DEFAULT nextval('public.excursiones_id_excursion_seq_1'),
                nombre_excursion VARCHAR NOT NULL,
                duracion_excursion TIME NOT NULL,
                CONSTRAINT excursiones_pk PRIMARY KEY (id_excursion)
);


ALTER SEQUENCE public.excursiones_id_excursion_seq_1 OWNED BY public.excursiones.id_excursion;

CREATE SEQUENCE public.tipo_de_personas_id_tipo_de_persona_seq_1;

CREATE TABLE public.tipo_de_personas (
                id_tipo_de_persona BIGINT NOT NULL DEFAULT nextval('public.tipo_de_personas_id_tipo_de_persona_seq_1'),
                nombre_tipo_de_persona VARCHAR NOT NULL,
                cuit_cuil BOOLEAN,
                razon_social BOOLEAN,
                fecha_llegada BOOLEAN,
                fecha_partida BOOLEAN,
                CONSTRAINT tipo_de_personas_pk PRIMARY KEY (id_tipo_de_persona)
);


ALTER SEQUENCE public.tipo_de_personas_id_tipo_de_persona_seq_1 OWNED BY public.tipo_de_personas.id_tipo_de_persona;

CREATE SEQUENCE public.tipo_domicilio_id_tipo_domicilio_seq_1;

CREATE TABLE public.tipo_domicilio (
                id_tipo_domicilio BIGINT NOT NULL DEFAULT nextval('public.tipo_domicilio_id_tipo_domicilio_seq_1'),
                nombre_tipo_domicilio VARCHAR NOT NULL,
                CONSTRAINT tipo_domicilio_pk PRIMARY KEY (id_tipo_domicilio)
);


ALTER SEQUENCE public.tipo_domicilio_id_tipo_domicilio_seq_1 OWNED BY public.tipo_domicilio.id_tipo_domicilio;

CREATE SEQUENCE public.orden_de_servicio_id_orden_de_servicio_seq_1;

CREATE TABLE public.Orden_de_servicio (
                id_orden_de_servicio BIGINT NOT NULL DEFAULT nextval('public.orden_de_servicio_id_orden_de_servicio_seq_1'),
                fecha_serv DATE NOT NULL,
                CONSTRAINT orden_de_servicio_pk PRIMARY KEY (id_orden_de_servicio)
);


ALTER SEQUENCE public.orden_de_servicio_id_orden_de_servicio_seq_1 OWNED BY public.Orden_de_servicio.id_orden_de_servicio;

CREATE SEQUENCE public.caracteristicas_vehiculos_id_carateristicas_vehi_seq;

CREATE TABLE public.caracteristicas_vehiculos (
                id_carateristica_vehi BIGINT NOT NULL DEFAULT nextval('public.caracteristicas_vehiculos_id_carateristicas_vehi_seq'),
                nombr_caract_vehic VARCHAR(20) NOT NULL,
                CONSTRAINT caracteristicas_vehiculos_pk PRIMARY KEY (id_carateristica_vehi)
);
COMMENT ON TABLE public.caracteristicas_vehiculos IS 'La caracteristica de vehiculo es ejemplo: si tiene aire acondicionado, espacio para equipaje, vidrio polarizado, etc.';


ALTER SEQUENCE public.caracteristicas_vehiculos_id_carateristicas_vehi_seq OWNED BY public.caracteristicas_vehiculos.id_carateristica_vehi;

CREATE SEQUENCE public.vehiculos_id_vehiculo_seq;

CREATE TABLE public.vehiculos (
                id_vehiculo BIGINT NOT NULL DEFAULT nextval('public.vehiculos_id_vehiculo_seq'),
                nombre_vehiculo VARCHAR(10) NOT NULL,
                vehi_cant_asientos INTEGER NOT NULL,
                dominio_vehi VARCHAR NOT NULL,
                CONSTRAINT vehiculos_pk PRIMARY KEY (id_vehiculo)
);
COMMENT ON TABLE public.vehiculos IS 'vehiculos de la empresa, con sus carateristicas.';
COMMENT ON COLUMN public.vehiculos.nombre_vehiculo IS 'es la identificacion del vehiculo segun la empresa, puede ser un nro o por unidad. Ej unidad nro 20';
COMMENT ON COLUMN public.vehiculos.dominio_vehi IS 'Patente del vehiculo';


ALTER SEQUENCE public.vehiculos_id_vehiculo_seq OWNED BY public.vehiculos.id_vehiculo;

CREATE TABLE public.caract_por_vehic (
                id_carateristica_vehi BIGINT NOT NULL,
                id_vehiculo BIGINT NOT NULL,
                CONSTRAINT caract_por_vehic_pk PRIMARY KEY (id_carateristica_vehi, id_vehiculo)
);


CREATE SEQUENCE public.empresa_tel_id_empresa_tel_seq_1;

CREATE TABLE public.empresa_tel (
                id_empresa_tel BIGINT NOT NULL DEFAULT nextval('public.empresa_tel_id_empresa_tel_seq_1'),
                nombre_empresa_tel VARCHAR NOT NULL,
                CONSTRAINT empresa_tel_pk PRIMARY KEY (id_empresa_tel)
);


ALTER SEQUENCE public.empresa_tel_id_empresa_tel_seq_1 OWNED BY public.empresa_tel.id_empresa_tel;

CREATE UNIQUE INDEX empresa_tel_idx
 ON public.empresa_tel
 ( nombre_empresa_tel );

CREATE SEQUENCE public.tipo_correo_id_tipo_correo_seq_1;

CREATE TABLE public.tipo_correo (
                id_tipo_correo BIGINT NOT NULL DEFAULT nextval('public.tipo_correo_id_tipo_correo_seq_1'),
                nombre_tipo_correo VARCHAR NOT NULL,
                CONSTRAINT tipo_correo_pk PRIMARY KEY (id_tipo_correo)
);


ALTER SEQUENCE public.tipo_correo_id_tipo_correo_seq_1 OWNED BY public.tipo_correo.id_tipo_correo;

CREATE UNIQUE INDEX nombre_tipo_correo_idx
 ON public.tipo_correo
 ( nombre_tipo_correo );

CREATE SEQUENCE public.tipo_telefono_id_tipo_telefono_seq_1;

CREATE TABLE public.tipo_telefono (
                id_tipo_telefono BIGINT NOT NULL DEFAULT nextval('public.tipo_telefono_id_tipo_telefono_seq_1'),
                nombre_tipo_tel VARCHAR(15) NOT NULL,
                CONSTRAINT tipo_telefono_pk PRIMARY KEY (id_tipo_telefono)
);


ALTER SEQUENCE public.tipo_telefono_id_tipo_telefono_seq_1 OWNED BY public.tipo_telefono.id_tipo_telefono;

CREATE UNIQUE INDEX tipo_telefono_idx
 ON public.tipo_telefono
 ( nombre_tipo_tel );

CREATE SEQUENCE public.rol_id_rol_seq;

CREATE TABLE public.rol (
                id_rol BIGINT NOT NULL DEFAULT nextval('public.rol_id_rol_seq'),
                nombre_rol VARCHAR(25) NOT NULL,
                CONSTRAINT rol_pk PRIMARY KEY (id_rol)
);


ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;

CREATE UNIQUE INDEX rol_idx
 ON public.rol
 ( nombre_rol );

CREATE SEQUENCE public.paises_id_pais_seq_1;

CREATE TABLE public.paises (
                id_pais BIGINT NOT NULL DEFAULT nextval('public.paises_id_pais_seq_1'),
                nombre_pais VARCHAR(45) NOT NULL,
                CONSTRAINT paises_pk PRIMARY KEY (id_pais)
);


ALTER SEQUENCE public.paises_id_pais_seq_1 OWNED BY public.paises.id_pais;

CREATE SEQUENCE public.provincias_id_provincia_seq_1;

CREATE TABLE public.provincias (
                id_provincia BIGINT NOT NULL DEFAULT nextval('public.provincias_id_provincia_seq_1'),
                nombre_provincia VARCHAR(45) NOT NULL,
                id_pais BIGINT NOT NULL,
                CONSTRAINT provincias_pk PRIMARY KEY (id_provincia)
);


ALTER SEQUENCE public.provincias_id_provincia_seq_1 OWNED BY public.provincias.id_provincia;

CREATE INDEX provincia_idx
 ON public.provincias
 ( nombre_provincia );

CREATE SEQUENCE public.localidades_id_localidad_seq;

CREATE TABLE public.localidades (
                id_localidad BIGINT NOT NULL DEFAULT nextval('public.localidades_id_localidad_seq'),
                nombre_localidad VARCHAR(45) NOT NULL,
                id_provincia BIGINT NOT NULL,
                CONSTRAINT localidades_pk PRIMARY KEY (id_localidad)
);


ALTER SEQUENCE public.localidades_id_localidad_seq OWNED BY public.localidades.id_localidad;

CREATE SEQUENCE public.personas_id_persona_seq;

CREATE TABLE public.personas (
                id_persona BIGINT NOT NULL DEFAULT nextval('public.personas_id_persona_seq'),
                id_tipo_de_persona BIGINT NOT NULL,
                nombre VARCHAR(45) NOT NULL,
                apellido VARCHAR(45) NOT NULL,
                dni INTEGER NOT NULL,
                cuit_cuil VARCHAR NOT NULL,
                razon_social VARCHAR(45) NOT NULL,
                fecha_nacim DATE NOT NULL,
                Parent_id_persona BIGINT NOT NULL,
                fecha_llegada DATE NOT NULL,
                fecha_partida DATE NOT NULL,
                CONSTRAINT personas_pk PRIMARY KEY (id_persona)
);
COMMENT ON COLUMN public.personas.cuit_cuil IS 'cuil o cuit';


ALTER SEQUENCE public.personas_id_persona_seq OWNED BY public.personas.id_persona;

CREATE UNIQUE INDEX personas_idx
 ON public.personas
 ( cuit_cuil );

CREATE TABLE public.excursiones_a_realizar (
                id_persona BIGINT NOT NULL,
                id_excursion BIGINT NOT NULL,
                CONSTRAINT excursiones_a_realizar_pk PRIMARY KEY (id_persona, id_excursion)
);


CREATE TABLE public.roles_x_servicio (
                id_rol BIGINT NOT NULL,
                id_persona BIGINT NOT NULL,
                id_orden_de_servicio BIGINT NOT NULL,
                CONSTRAINT roles_x_servicio_pk PRIMARY KEY (id_rol, id_persona, id_orden_de_servicio)
);


CREATE SEQUENCE public.correo_id_correo_seq;

CREATE TABLE public.correo (
                id_correo BIGINT NOT NULL DEFAULT nextval('public.correo_id_correo_seq'),
                nombre_correo VARCHAR(40) NOT NULL,
                id_tipo_correo BIGINT NOT NULL,
                id_persona BIGINT NOT NULL,
                CONSTRAINT correo_pk PRIMARY KEY (id_correo)
);


ALTER SEQUENCE public.correo_id_correo_seq OWNED BY public.correo.id_correo;

CREATE UNIQUE INDEX correo_idx
 ON public.correo
 ( nombre_correo );

CREATE SEQUENCE public.telefono_id_telefono_seq;

CREATE TABLE public.telefono (
                id_telefono BIGINT NOT NULL DEFAULT nextval('public.telefono_id_telefono_seq'),
                nro_telefono INTEGER NOT NULL,
                id_tipo_telefono BIGINT NOT NULL,
                id_persona BIGINT NOT NULL,
                id_empresa_tel BIGINT NOT NULL,
                CONSTRAINT telefono_pk PRIMARY KEY (id_telefono)
);


ALTER SEQUENCE public.telefono_id_telefono_seq OWNED BY public.telefono.id_telefono;

CREATE TABLE public.roles_x_persona (
                id_persona BIGINT NOT NULL,
                id_rol_x_persona BIGINT NOT NULL,
                CONSTRAINT roles_x_persona_pk PRIMARY KEY (id_persona, id_rol_x_persona)
);


CREATE SEQUENCE public.domicilio_id_domicilio_seq;

CREATE TABLE public.domicilio (
                id_domicilio BIGINT NOT NULL DEFAULT nextval('public.domicilio_id_domicilio_seq'),
                id_tipo_domicilio BIGINT NOT NULL,
                id_persona BIGINT NOT NULL,
                id_localidad BIGINT NOT NULL,
                calle VARCHAR(30) NOT NULL,
                piso VARCHAR(10) NOT NULL,
                dpto VARCHAR(10) NOT NULL,
                monoblock VARCHAR(10) NOT NULL,
                nro INTEGER NOT NULL,
                CONSTRAINT domicilio_pk PRIMARY KEY (id_domicilio)
);


ALTER SEQUENCE public.domicilio_id_domicilio_seq OWNED BY public.domicilio.id_domicilio;

ALTER TABLE public.excursiones_a_realizar ADD CONSTRAINT excursiones_excursiones_a_realizar_fk
FOREIGN KEY (id_excursion)
REFERENCES public.excursiones (id_excursion)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.personas ADD CONSTRAINT tipo_de_personas_personas_fk
FOREIGN KEY (id_tipo_de_persona)
REFERENCES public.tipo_de_personas (id_tipo_de_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.domicilio ADD CONSTRAINT tipo_domicilio_domicilio_fk
FOREIGN KEY (id_tipo_domicilio)
REFERENCES public.tipo_domicilio (id_tipo_domicilio)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.roles_x_servicio ADD CONSTRAINT orden_de_servicio_roles_x_servicio_fk
FOREIGN KEY (id_orden_de_servicio)
REFERENCES public.Orden_de_servicio (id_orden_de_servicio)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.caract_por_vehic ADD CONSTRAINT caracteristicas_vehiculos_caract_por_vehic_fk
FOREIGN KEY (id_carateristica_vehi)
REFERENCES public.caracteristicas_vehiculos (id_carateristica_vehi)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.caract_por_vehic ADD CONSTRAINT vehiculos_caract_por_vehic_fk
FOREIGN KEY (id_vehiculo)
REFERENCES public.vehiculos (id_vehiculo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.telefono ADD CONSTRAINT empresa_tel_telefono_fk
FOREIGN KEY (id_empresa_tel)
REFERENCES public.empresa_tel (id_empresa_tel)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.correo ADD CONSTRAINT tipo_correo_correo_fk
FOREIGN KEY (id_tipo_correo)
REFERENCES public.tipo_correo (id_tipo_correo)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.telefono ADD CONSTRAINT tipo_telefono_telefono_fk
FOREIGN KEY (id_tipo_telefono)
REFERENCES public.tipo_telefono (id_tipo_telefono)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.roles_x_persona ADD CONSTRAINT rol_roles_fk
FOREIGN KEY (id_rol_x_persona)
REFERENCES public.rol (id_rol)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.roles_x_servicio ADD CONSTRAINT rol_roles_x_servicio_fk
FOREIGN KEY (id_rol)
REFERENCES public.rol (id_rol)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.provincias ADD CONSTRAINT paises_provincias_fk
FOREIGN KEY (id_pais)
REFERENCES public.paises (id_pais)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.localidades ADD CONSTRAINT provincias_localidades_fk
FOREIGN KEY (id_provincia)
REFERENCES public.provincias (id_provincia)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.domicilio ADD CONSTRAINT localidades_domicilio_fk
FOREIGN KEY (id_localidad)
REFERENCES public.localidades (id_localidad)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.personas ADD CONSTRAINT personas_personas_fk
FOREIGN KEY (Parent_id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.domicilio ADD CONSTRAINT personas_domicilio_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.roles_x_persona ADD CONSTRAINT personas_roles_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.telefono ADD CONSTRAINT personas_telefono_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.correo ADD CONSTRAINT personas_correo_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.roles_x_servicio ADD CONSTRAINT personas_roles_x_servicio_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.excursiones_a_realizar ADD CONSTRAINT personas_excursiones_a_realizar_fk
FOREIGN KEY (id_persona)
REFERENCES public.personas (id_persona)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
