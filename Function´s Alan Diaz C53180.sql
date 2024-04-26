DELIMITER $$
CREATE FUNCTION CalcularEdad(FECHANACIMIENTO DATE)
RETURNS INT
BEGIN
    RETURN YEAR(CURDATE()) - YEAR(FECHANACIMIENTO) - (RIGHT(CURDATE(), 5) < RIGHT(FECHANACIMIENTO, 5));
END $$
DELIMITER ;
## Descripción: Esta función calcula la edad de un jugador basada en su fecha de nacimiento.
## Objetivo: Facilitar el cálculo de la edad de un jugador en consultas SQL sin tener que realizar el cálculo manualmente cada vez.
## Implementación: Esta función podría ser implementada en una base de datos que almacena información de jugadores de fútbol. La función tomaría como entrada la fecha de nacimiento del jugador y devolvería su edad.

DELIMITER $$
CREATE FUNCTION SalarioPromedioEquipo(EQUIPOID INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
BEGIN
    DECLARE promedio DECIMAL(10,2);
    SELECT AVG(SALARIO) INTO promedio FROM JUGADORES WHERE EQUIPOID = EQUIPOID;
    RETURN promedio;
END $$
DELIMITER ;

DELIMITER $$

## Descripción: Esta función calcula el salario promedio de los jugadores de un equipo específico.
## Objetivo: Proporcionar una forma rápida y sencilla de obtener el salario promedio de los jugadores de un equipo en particular.
## Implementación: Esta función podría ser implementada en una base de datos que almacena información sobre equipos de fútbol y sus jugadores. La función tomaría como entrada el ID del equipo y calcularía el salario promedio de los jugadores pertenecientes a ese equipo.