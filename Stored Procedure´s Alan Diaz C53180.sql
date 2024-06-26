CREATE PROCEDURE AgregarJugador(
    IN p_nombre VARCHAR(50),
    IN p_apellido VARCHAR(50),
    IN p_posicion VARCHAR(50),
    IN p_fecha_nacimiento DATE,
    IN p_nacionalidad VARCHAR(50),
    IN p_salario DECIMAL(10,2)
)
BEGIN
    INSERT INTO JUGADORES (NOMBRE, APELLIDO, POSICION, FECHANACIMIENTO, NACIONALIDAD, SALARIO)
    VALUES (p_nombre, p_apellido, p_posicion, p_fecha_nacimiento, p_nacionalidad, p_salario);
END $$
DELIMITER ;
## Descripcion: Este procedimiento almacenado permite agregar un nuevo jugador a la base de datos de jugadores de fútbol.
## Objetivo/beneficio: Simplifica el proceso de inserción de nuevos jugadores al encapsular la lógica de inserción en un procedimiento almacenado reutilizable.
## Tablas que interactúa: Interactúa principalmente con la tabla JUGADORES, donde se almacenan los datos de los jugadores de fútbol.

DROP PROCEDURE IF EXISTS ActualizarSalarioJugador;
DELIMITER $$
CREATE PROCEDURE ActualizarSalarioJugador(
    IN p_jugador_id INT,
    IN p_nuevo_salario DECIMAL(10,2)
)
BEGIN
    UPDATE JUGADORES
    SET SALARIO = p_nuevo_salario
    WHERE JUGADORID = p_jugador_id;
END $$
DELIMITER ;
## Descripción: Este procedimiento almacenado permite actualizar el salario de un jugador existente en la base de datos.
## Objetivo/beneficio: Facilita la actualización de información de salario de los jugadores de fútbol al encapsular la lógica de actualización en un procedimiento almacenado.
## Tablas que interactúa: Interactúa principalmente con la tabla JUGADORES, donde se almacenan los datos de los jugadores de fútbol.

DELIMITER $$
CREATE PROCEDURE EliminarJugador(
    IN p_jugador_id INT
)
BEGIN
    DELETE FROM JUGADORES WHERE JUGADORID = p_jugador_id;
END $$
DELIMITER ;
## Descripción: Este procedimiento almacenado permite eliminar un jugador de la base de datos.
## Objetivo/beneficio: Simplifica la eliminación de jugadores de fútbol al encapsular la lógica de eliminación en un procedimiento almacenado.
## Tablas que interactúa: Interactúa principalmente con la tabla JUGADORES, donde se almacenan los datos de los jugadores de fútbol.
