/*Crear tabla duenos*/
USE veterinaria_patitas_felices;

CREATE TABLE duenos(
	id int PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
    telefono varchar(20) not null,
    direccion varchar(100)
);