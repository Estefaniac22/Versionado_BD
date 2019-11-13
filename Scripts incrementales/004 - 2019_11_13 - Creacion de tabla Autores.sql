INSERT INTO Scripts
VALUES(4, 004, "Creación de autores", '2019_11_13');

CREATE TABLE Autores(
Codigo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Nombre VARCHAR(100),
Pelicula INT,
FOREIGN KEY (Pelicula)
REFERENCES Peliculas(Codigo));

ALTER TABLE Peliculas
ADD Autor INT NOT NULL;

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
(20, "Sylvia Plath", 20);

ALTER TABLE Peliculas
ADD CONSTRAINT Fk_AUTOR
FOREIGN KEY (Autor)
REFERENCES Autores(Codigo);


UPDATE Peliculas SET Autor = 1 WHERE Codigo = 1;
UPDATE Peliculas SET Autor = 2 WHERE Codigo = 2;
UPDATE Peliculas SET Autor = 3 WHERE Codigo = 3;
UPDATE Peliculas SET Autor = 4 WHERE Codigo = 4;
UPDATE Peliculas SET Autor = 5 WHERE Codigo = 5;
UPDATE Peliculas SET Autor = 6 WHERE Codigo = 6;
UPDATE Peliculas SET Autor = 7 WHERE Codigo = 7;
UPDATE Peliculas SET Autor = 8 WHERE Codigo = 8;
UPDATE Peliculas SET Autor = 9 WHERE Codigo = 9;
UPDATE Peliculas SET Autor = 10 WHERE Codigo = 10;
UPDATE Peliculas SET Autor = 11 WHERE Codigo = 11;
UPDATE Peliculas SET Autor = 12 WHERE Codigo = 12;
UPDATE Peliculas SET Autor = 13 WHERE Codigo = 13;
UPDATE Peliculas SET Autor = 14 WHERE Codigo = 14;
UPDATE Peliculas SET Autor = 15 WHERE Codigo = 15;
UPDATE Peliculas SET Autor = 16 WHERE Codigo = 16;
UPDATE Peliculas SET Autor = 17 WHERE Codigo = 17;
UPDATE Peliculas SET Autor = 18 WHERE Codigo = 18;
UPDATE Peliculas SET Autor = 19 WHERE Codigo = 19;
UPDATE Peliculas SET Autor = 20 WHERE Codigo = 20;