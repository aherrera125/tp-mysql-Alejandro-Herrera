/*JOIN múltiple con historial*/
use veterinaria_patitas_felices;

select ma.nombre nombre_mascota,
	ma.especie especie_mascota,
    concat(du.nombre, ' ', du.apellido) nombre_dueño,
    concat(ve.nombre, ' ', ve.apellido) nombre_veterinario,
    hc.fecha_registro,
    hc.descripcion
from historial_clinico hc
inner join mascotas ma on ma.id = hc.id_mascota
inner join duenos du on du.id = ma.id_dueno
inner join veterinarios ve on ve.id = hc.id_veterinario
;