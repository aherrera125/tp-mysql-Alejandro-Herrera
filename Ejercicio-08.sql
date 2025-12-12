/*Eliminar registros*/
/*Eliminar una mascota (por ID o nombre)*/
use veterinaria_patitas_felices;

delete from mascotas
where id = 2;

select * from historial_clinico
where id_mascota = 2;
