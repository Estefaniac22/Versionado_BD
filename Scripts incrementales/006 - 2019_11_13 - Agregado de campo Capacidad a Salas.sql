USE Cine;
INSERT INTO Scripts
VALUES(6, 006, "Agregado de Capacidad", '2019_11_13');

ALTER TABLE Salas
ADD Capacidad INT NOT NULL;

UPDATE Salas SET Capacidad = 250 WHERE Codigo = 1;
UPDATE Salas SET Capacidad = 350 WHERE Codigo = 2;
UPDATE Salas SET Capacidad = 200 WHERE Codigo = 3;
UPDATE Salas SET Capacidad = 180 WHERE Codigo = 4;
UPDATE Salas SET Capacidad = 400 WHERE Codigo = 5;
UPDATE Salas SET Capacidad = 500 WHERE Codigo = 6;


