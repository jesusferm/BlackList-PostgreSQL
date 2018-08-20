create database bdlistanegra;
-- manualmente seleccionar la base de datos creada, crear por partes, pgAdmin funciona diferente
-- a workbench de mysql.
create table usuarios(
	id SERIAL,
	nick varchar(89),
	passwd varchar(480),
	nombre varchar(40),
	apellidos varchar(30),
	image BYTEA,
	primary key(id)
);

create table listanegra(
	id serial,
	iduser int,
	nombre varchar(90),
	razon varchar(190),
	edad int,
	primary key(id),
	foreign key(iduser) references usuarios(id) on update cascade on delete restrict
);

create table fechas_importantes(
    id_fecha serial,
    id_user int,
    tipo_fecha varchar(90),
    descripcion varchar(180),
    fecha varchar(30),
    primary key(id_fecha),
    foreign key(id_user) references usuarios(id) on update cascade on delete cascade
);
