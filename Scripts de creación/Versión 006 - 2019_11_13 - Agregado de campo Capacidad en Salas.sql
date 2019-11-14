DROP DATABASE IF EXISTS Cine;
CREATE DATABASE IF NOT EXISTS Cine;
USE Cine;

DROP TABLE IF EXISTS Salas;
CREATE TABLE IF NOT EXISTS Salas(
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100),
Pelicula INT,
Capacidad INT,
KEY FK_Pelicula (Pelicula)
);

INSERT INTO Salas
VALUES
(1, 'Village', 2, 250),
(2, 'Cine Universidad', 5, 350),
(3, 'Cinemacenter', 3, 200),
(4, 'Microcine Municipal', 1, 180),
(5, 'Cinemark', 10, 400),
(6, 'Cine Tadicor', 7, 500);

DROP TABLE IF EXISTS Peliculas;
CREATE TABLE IF NOT EXISTS Peliculas(
Codigo INT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR(100),
CalificacionEdad INT,
Año INT,
Autor INT);

ALTER TABLE Peliculas
ADD CONSTRAINT Fk_AUTOR
FOREIGN KEY (Autor)
REFERENCES Autores(Codigo);

INSERT INTO Peliculas
VALUES
(1, 'Tierra de penumbra', 16, 1993, 1),
(2, 'Shakespeare enamorado', 18, 1998, 2),
(3, 'La joven Jan Austen', 16, 2007, 3),
(4, 'El secreto de los hermanos Grimm', 6, 2005, 4),
(5, 'Dias sin vida', 13, 1959, 5),
(6, 'Truman Capote', 6, 2005, 6),
(7, 'Harry Potter', 3, 2001, 7),
(8, 'Descubriendo Nunca Jamás', 13, 2004, 8),
(9, 'Un cuento de hadas', 3, 1997, 9),
(10, 'Soldados de salamina', 6, 2003, 10),
(11, 'Cancion inolvidable', 13, 1945, 11),
(12, 'Wilde', 6, 1997, 12),
(13, 'Las horas', 16, 2002, 13),
(14, 'Remando al viento', 13, 1988, 14),
(15, 'Iris', 13, 2001, 15),
(16, 'El diario de Ana frank', 13, 1959, 16),
(17, 'Hamsun', 6, 1996, 17),
(18, 'Memorias de África', 13, 1985, 18),
(19, 'La escafandra y la mariposa', 3, 2007, 19),
(20, 'Sylvia', 6, 2003, 20),
(21, 'Medianoche en París', 13, 2008, 21),
(22, 'Finding Neverland', 3, 2002, 22),
(23, 'Vidas al límite', 18, 1995, 23),
(24, 'The farewell', 12, 2019, 24),
(25, 'Toy Story 4', 3, 2019, 25);


DROP TABLE IF EXISTS Scripts;
CREATE TABLE IF NOT EXISTS Scripts(
Id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Version INT NOT NULL,
Nombre VARCHAR(22) NOT NULL,
Fecha DATE NOT NULL);

INSERT INTO Scripts
VALUES( 1, 001, "Linea base", '2019_11_13'),
(2, 002, "Insert de peliculas", '2019_11_13'),
(3, 003, "Agregado de Año", '2019_11_13'),
(4, 004, "Creación de autores", '2019_11_13'),
(5, 005, "Insert sala_peliculas", '2019_11_13'),
(6, 006, "Agregado de Capacidad", '2019_11_13');

DROP TABLE IF EXISTS Autores;
CREATE TABLE IF NOT EXISTS Autores(
Codigo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre VARCHAR(100),
Pelicula INT,
FOREIGN KEY (Pelicula)
REFERENCES Peliculas(Codigo));

INSERT INTO Autores
VALUES(1, "C.S.Lewis", 1),
(2, "William Shakespeare", 2),
(3, "Jane Austen", 3),
(4, "Wilheim", 4),
(5, "Scott Fitzgerald",5 ),
(6, "Truman Capote", 6),
(7, "J.K. Rowling", 7),
(8, "J.M. Barrie", 8),
(9, "Arthut Conan Doyle", 9),
(10, "Rafael Sánchez Mazas", 10),
(11, "George Sand", 11),
(12, "Oscar Wilde", 12),
(13, "Virginia Woolf", 13),
(14, "Mary Shelley", 14),
(15, "Iris Murdoch", 15),
(16, "Ana Frank", 16),
(17, "Knut Hamsun", 17),
(18, "Isak Dinesen", 18),
(19, "Jean-Dominique Bauby", 19),
(20, "Sylvia Plath", 20),
( 21,"Woody Allen",21),
( 22,"J.M. Barrie", 22),
( 23,"Christopher Hampton", 23),
( 24, "Lulu Wang", 24),
( 25,"John Lasseter", 25);

