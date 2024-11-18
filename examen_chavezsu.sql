-- Crear la base de datos
CREATE SCHEMA IF NOT EXISTS EXAMEN_CHAVEZSU;
USE EXAMEN_CHAVEZSU;

-- Crear la tabla Region
DROP TABLE IF EXISTS Region;
CREATE TABLE Region (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);

-- Insertar datos en la tabla Region
INSERT INTO Region (codigo, nombre) VALUES
(1, 'Lima'),
(2, 'Arequipa'),
(3, 'Cusco'),
(4, 'Libertad'),
(5, 'Piura'),
(6, 'Tacna'),
(7, 'Junin'),
(8, 'Loreto'),
(9, 'Puno'),
(10, 'Ica');

-- Crear la tabla Distrito
DROP TABLE IF EXISTS Distrito;
CREATE TABLE Distrito (
    codigo INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    region_codigo INT,
    FOREIGN KEY (region_codigo) REFERENCES Region(codigo)
);

-- Insertar datos en la tabla Distrito
INSERT INTO Distrito (codigo, nombre, region_codigo) VALUES
(101, 'Miraflores', 1),
(102, 'San Isidro', 1),
(103, 'Santiago', 3),
(104, 'Trujillo', 4),
(105, 'Sullana', 5),
(106, 'Tacna Centro', 6),
(107, 'Huancayo', 7),
(108, 'Iquitos', 8),
(109, 'Puno Centro', 9),
(110, 'Chincha Alta', 10);

-- Crear la tabla Alumno
DROP TABLE IF EXISTS Alumno;
CREATE TABLE Alumno (
    codigo INT PRIMARY KEY,
    dni CHAR(8) NOT NULL,
    apellido_paterno VARCHAR(50) NOT NULL,
    apellido_materno VARCHAR(50) NOT NULL,
    nombres VARCHAR(100) NOT NULL,
    direccion VARCHAR(150) NOT NULL,
    lugar INT,
    FOREIGN KEY (lugar) REFERENCES Distrito(codigo)
);

-- Insertar datos en la tabla Alumno
INSERT INTO Alumno (codigo, dni, apellido_paterno, apellido_materno, nombres, direccion, lugar) VALUES
(1001, '12345678', 'Perez', 'Rojas', 'Luis', 'Av. Primavera 123', 101),
(1002, '23456789', 'Gonzalez', 'Lopez', 'Ana', 'Calle Lima 456', 102),
(1003, '34567890', 'Ramirez', 'Salazar', 'Carlos', 'Jr. Cusco 789', 103),
(1004, '45678901', 'Sanchez', 'Castro', 'Maria', 'Av. Larco 321', 104);
