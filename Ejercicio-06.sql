/*Insertar registros*/
/*3 dueños con información completa*/
use veterinaria_patitas_felices;

insert into duenos(nombre,apellido,telefono,direccion)
VALUES ('Juan Carlos','Medina','3815153426','Av. Roca 1258'),
('Miguel','Flores','3814852456','Silvano Bores 542'),
('Marcela Luz','Quintero','3813789123','Calle de Barcelona 1041');

/*3 mascotas, cada una asociada a un dueño*/
use veterinaria_patitas_felices;

insert into mascotas(id_dueno, nombre, especie, fecha_nacimiento)
VALUES (1,'Rocco Rodolfo','perro','2020-05-14'),
(2,'Alvin Martin','Conejo','2023-08-03'),
(3,'Mike Morel','gato','2018-10-25');

/*3 veterinarios con especialidades distintas*/
use veterinaria_patitas_felices;

insert into veterinarios(nombre, apellido, matricula, especialidad)
VALUES ('Lucia','Padilla','vt25468','Cirugía Veterinaria'),
('Ignacio','Corbalan','vt852456','Oncología'),
('Paula','Albarracin','vt789651','Clínica general');

/*3 registros de historial clínico*/
use veterinaria_patitas_felices;

insert into historial_clinico(id_mascota, id_veterinario, fecha_registro, descripcion)
VALUES (1, 2, '2024-10-12', 'Infeccion urinaria'),
(3, 1, '2025-08-01', 'Traumatismo de craneo'),
(2, 3, '2023-12-15','Hemorragia intestinal');