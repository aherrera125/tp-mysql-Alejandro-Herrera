/*EJERCICIO 1 - Crear Base de Datos*/
CREATE DATABASE veterinaria_patitas_felices;
USE veterinaria_patitas_felices;

/*EJERCICIO 2 - Crear tabla duenos*/
CREATE TABLE duenos(
	id int PRIMARY KEY AUTO_INCREMENT,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
    telefono varchar(20) not null,
    direccion varchar(100)
);

/*EHERCICIO 3 - Crear tabla mascotas*/
CREATE TABLE mascotas(
	id int PRIMARY KEY AUTO_INCREMENT,
    id_dueno int not null,
	nombre varchar(50) not null,
	especie varchar(30) not null,
    fecha_nacimiento date,
    FOREIGN KEY (id_dueno) REFERENCES duenos(id)
);

/*EJERCICIO 4 - Crear tabla veterinarios*/
CREATE TABLE veterinarios(
	id int PRIMARY KEY AUTO_INCREMENT,    
	nombre varchar(50) not null,
	apellido varchar(50) not null,
    matricula varchar(20) not null UNIQUE,
    especialidad varchar(50) not null
);

/*EJERCICIO 5 - Crear tabla historial_clinico*/
CREATE TABLE historial_clinico(
	id int PRIMARY KEY AUTO_INCREMENT,    
	id_mascota int not null,
    id_veterinario int not null,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
    descripcion varchar(250) not null,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id) ON DELETE CASCADE,
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id) ON DELETE CASCADE
);

/*EJERCICIO 6 - Insertar registros*/
/*3 dueños con información completa*/
insert into duenos(nombre,apellido,telefono,direccion)
VALUES ('Juan Carlos','Medina','3815153426','Av. Roca 1258'),
('Miguel','Flores','3814852456','Silvano Bores 542'),
('Marcela Luz','Quintero','3813789123','Calle de Barcelona 1041');

/*3 mascotas, cada una asociada a un dueño*/
insert into mascotas(id_dueno, nombre, especie, fecha_nacimiento)
VALUES (1,'Rocco Rodolfo','perro','2020-05-14'),
(2,'Alvin Martin','Conejo','2023-08-03'),
(3,'Mike Morel','gato','2018-10-25');

/*3 veterinarios con especialidades distintas*/
insert into veterinarios(nombre, apellido, matricula, especialidad)
VALUES ('Lucia','Padilla','vt25468','Cirugía Veterinaria'),
('Ignacio','Corbalan','vt852456','Oncología'),
('Paula','Albarracin','vt789651','Clínica general');

/*3 registros de historial clínico*/
insert into historial_clinico(id_mascota, id_veterinario, fecha_registro, descripcion)
VALUES (1, 2, '2024-10-12', 'Infeccion urinaria'),
(3, 1, '2025-08-01', 'Traumatismo de craneo'),
(2, 3, '2023-12-15','Hemorragia intestinal');

/*EJERCICIO 7 - Actualizar registros*/
/*Cambiar la dirección de un dueño (por ID o nombre)*/
update duenos
set direccion = 'Celedonio Gutierrez 1259'
where id = 1;

/*Actualizar la especialidad de un veterinario (por ID o matrícula)*/
update veterinarios
set especialidad = 'Emergencias y cuidados críticos'
where id = 3;

/*Editar la descripción de un historial clínico (por ID)*/
update historial_clinico
set descripcion = 'Perdida de vision'
where id = 2;

/*EJERCICIO 8 - Eliminar registros*/
/*Eliminar una mascota (por ID o nombre)*/
delete from mascotas
where id = 2;

select * from historial_clinico
where id_mascota = 2;

/*EJERCICIO 9 - JOIN simple*/
select 
	ma.nombre nombre_mascota, 
    ma.especie especie_mascota, 
    concat(du.nombre, ' ', du.apellido) nombre_veterinario 
from mascotas ma
inner JOIN duenos du on ma.id_dueno = du.id;

/*EJERCICIO 10 - JOIN múltiple con historial*/
select ma.nombre nombre_mascota,
	ma.especie especie_mascota,
    concat(du.nombre, ' ', du.apellido) nombre_dueño,
    concat(ve.nombre, ' ', ve.apellido) nombre_veterinario,
    hc.fecha_registro,
    hc.descripcion
from historial_clinico hc
inner join mascotas ma on ma.id = hc.id_mascota
inner join duenos du on du.id = ma.id_dueno
inner join veterinarios ve on ve.id = hc.id_veterinario;