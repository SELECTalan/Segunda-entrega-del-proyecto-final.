CREATE VIEW JugadoresDestacados AS
SELECT 
    JUGADORID,
    NOMBRE,
    APELLIDO,
    POSICION,
    HABILIDADESDESTACADAS,
    SALARIO
FROM 
    JUGADORES
WHERE 
    SALARIO > 1000000;
    #Esta vista podría mostrar información sobre los jugadores cuyas habilidades destacadas cumplen ciertos criterios.

CREATE VIEW EntrenadoresPorNacionalidad AS
SELECT 
    NACIONALIDAD,
    COUNT(*) AS TotalEntrenadores
FROM 
    ENTRENADORES
GROUP BY 
    NACIONALIDAD;
    #Esta vista podría mostrar cuántos entrenadores hay de cada nacionalidad.

CREATE VIEW PartidosPendientes AS
SELECT 
    PARTIDOID,
    FECHA,
    HORA,
    ESTADIO,
    EQUIPOVISITANTEID,
    RESULTADOLOCAL,
    RESULTADOVISITANTE
FROM 
    PARTIDOS
WHERE 
    FECHA > CURDATE();
    #Esta vista podría mostrar los partidos programados para el futuro que aún no se han jugado.
    
SELECT * FROM JugadoresDestacados;
SELECT * FROM EntrenadoresPorNacionalidad;
SELECT * FROM PartidosPendientes;