/*Crear tabla mascotas*/
USE veterinaria_patitas_felices;

CREATE TABLE mascotas(
	id int PRIMARY KEY AUTO_INCREMENT,
    id_dueno int not null,
	nombre varchar(50) not null,
	especie varchar(30) not null,
    fecha_nacimiento date,
    FOREIGN KEY (id_dueno) REFERENCES duenos(id)
);