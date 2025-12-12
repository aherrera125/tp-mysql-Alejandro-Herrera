/*JOIN simple*/
use veterinaria_patitas_felices;

select 
	ma.nombre nombre_mascota, 
    ma.especie especie_mascota, 
    concat(du.nombre, ' ', du.apellido) nombre_veterinario 
from mascotas ma
inner JOIN duenos du on ma.id_dueno = du.id;