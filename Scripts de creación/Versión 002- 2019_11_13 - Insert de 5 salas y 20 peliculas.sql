DROP DATABASE IF EXISTS Cine;
CREATE DATABASE IF NOT EXISTS Cine;
USE Cine;

DROP TABLE IF EXISTS Salas;
CREATE TABLE IF NOT EXISTS Salas(
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100),
Pelicula INT,
KEY FK_Pelicula (Pelicula)
);

INSERT INTO Salas
VALUES(1, "Village",2),
(2,"Cine Universidad", 5),
(3,"Cinemacenter", 3),
(4,"Microcine Municipal",1),
(5,"Cinemark",10);

DROP TABLE IF EXISTS Peliculas;
CREATE TABLE IF NOT EXISTS Peliculas(
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100),
CalificacionEdad INT,
Año INT);

INSERT INTO Peliculas
VALUES(1, "Tierra de penumbra", 16),
(2,"Shakespeare enamorado", 18),
(3,"La joven Jan Austen", 16),
(4, "El secreto de los hermanos Grimm", 6),
(5, "Dias sin vida", 13),
(6, "Truman Capote", 6),
(7, "Harry Potter", 3),
(8, "Descubriendo Nunca Jamás", 13),
(9, "Un cuento de hadas", 3),
(10, "Soldados de salamina", 6),
(11, "Cancion inolvidable", 13),
(12, "Wilde", 6),
(13, "Las horas", 16),
(14, "Remando al viento", 13),
(15, "Iris", 13),
(16, "El diario de Ana frank", 13),
(17, "Hamsun", 6),
(18, "Memorias de África", 13),
(19, "La escafandra y la mariposa", 3),
(20, "Sylvia", 6);


DROP TABLE IF EXISTS Scripts;
CREATE TABLE IF NOT EXISTS Scripts(
Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Version INT NOT NULL,
Nombre VARCHAR(22) NOT NULL,
Fecha DATE NOT NULL);

INSERT INTO Scripts
VALUES( 1, 001, "Linea base", '2019_11_13'),
(2, 002, "Insert de peliculas", '2019_11_13');
                                            