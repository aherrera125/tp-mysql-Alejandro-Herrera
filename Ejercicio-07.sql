/*Actualizar registros*/
/*Cambiar la dirección de un dueño (por ID o nombre)*/
use veterinaria_patitas_felices;

update duenos
set direccion = 'Celedonio Gutierrez 1259'
where id = 1;

/*Actualizar la especialidad de un veterinario (por ID o matrícula)*/
use veterinaria_patitas_felices;

update veterinarios
set especialidad = 'Emergencias y cuidados críticos'
where id = 3;

/*Editar la descripción de un historial clínico (por ID)*/
use veterinaria_patitas_felices;

update historial_clinico
set descripcion = 'Perdida de vision'
where id = 2;