/*Crear tabla veterinarios*/
USE veterinaria_patitas_felices;

CREATE TABLE veterinarios(
	id int PRIMARY KEY AUTO_INCREMENT,    
	nombre varchar(50) not null,
	apellido varchar(50) not null,
    matricula varchar(20) not null UNIQUE,
    especialidad varchar(50) not null
);