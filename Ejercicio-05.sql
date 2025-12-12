/*Crear tabla historial_clinico*/
USE veterinaria_patitas_felices;

CREATE TABLE historial_clinico(
	id int PRIMARY KEY AUTO_INCREMENT,    
	id_mascota int not null,
    id_veterinario int not null,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP not null,
    descripcion varchar(250) not null,
    FOREIGN KEY (id_mascota) REFERENCES mascotas(id) ON DELETE CASCADE,
    FOREIGN KEY (id_veterinario) REFERENCES veterinarios(id) ON DELETE CASCADE
);