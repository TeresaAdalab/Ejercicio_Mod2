CREATE SCHEMA ejercicios_2;
USE ejercicios_2;
/* Ejercicio 1 : Crear la tabla empleadas*/

-- Crear la tabla Empleadas con una clave primaria
CREATE TABLE Empleadas (
    Empleada INT PRIMARY KEY,
    Salario FLOAT,
    Nombre VARCHAR(30),
    Apellido VARCHAR(30),
    Pais VARCHAR(10)
);

-- Insertar los datos en la tabla Empleadas
INSERT INTO Empleadas (Empleada, Salario, Nombre, Apellido, Pais)
VALUES 
(1, 2500, 'Ana', 'González', 'España'),
(2, 4000, 'Maria', 'López', 'España'),
(3, 3000, 'Lucía', 'Ramos', 'España'),
(4, 5000, 'Elena', 'Bueno', 'España'),
(5, 1500, 'Rocío', 'García', 'Francia');


-- Consultar todos los registros para verificar
SELECT * FROM Empleadas;

/*Ejercicio 2: Modifica la siguiente tabla, pero añadiendo una restricción de tabla que comprueba si la edad de la persona es mayor de 16 años. Llámala Personas2:*/

-- Crear la tabla personasp con una restricción CHECK
CREATE TABLE personasp (
    ID INT NOT NULL,
    Apellido VARCHAR(255) NOT NULL,
    Nombre VARCHAR(255) NOT NULL,
    Edad INT,
    Ciudad VARCHAR(255) DEFAULT 'Madrid',
    CONSTRAINT CHK_Persona CHECK (Edad >= 16)
);
/* Ejercicio 3: Crea las tabla Empleadas y empleadas_en_proyectos, 
definiendo claves primarias, claves foránea, tipos de datos, etc. 
Haz que cuando se elimine una Empleada, se eliminen todas las entradas en empleadas_en_proyectos asociadas.*/



-- Crear la tabla Empleadas
CREATE TABLE Empleadas (
    IDEmpleada INT NOT NULL AUTO_INCREMENT,
    Salario FLOAT DEFAULT NULL,
    Nombre VARCHAR(30) DEFAULT NULL,
    Apellido VARCHAR(30) DEFAULT NULL,
    Pais VARCHAR(10) DEFAULT NULL,
    PRIMARY KEY (IDEmpleada)
);

-- Crear la tabla EmpleadasEnProyectos
CREATE TABLE EmpleadasEnProyectos (
    IDEmpleada INT NOT NULL,
    IDProyecto INT NOT NULL,
    PRIMARY KEY (IDEmpleada, IDProyecto),
    CONSTRAINT fk_empleadas FOREIGN KEY (IDEmpleada) REFERENCES Empleadas (IDEmpleada) ON DELETE CASCADE
);

/* Ejercicio 4:Crea la tabla customers */

CREATE SCHEMA creacion_tienda;
USE creacion_tienda;
CREATE TABLE customers (
customerNumber int NOT NULL,
customerName varchar(50) NOT NULL,
contactLastName varchar(50) NOT NULL,
contactFirstName varchar(50) NOT NULL,
phone varchar(50) NOT NULL,
addressLine1 varchar(50) NOT NULL,
addressLine2 varchar(50) DEFAULT NULL,
city varchar(50) NOT NULL,
state varchar(50) DEFAULT NULL,
postalCode varchar(15) DEFAULT NULL,
country varchar(50) NOT NULL,
salesRepEmployeeNumber int DEFAULT NULL,
creditLimit decimal(10,2) DEFAULT NULL,
PRIMARY KEY (customerNumber) );

/* Ejercicio 5:Crea la empleados */

CREATE TABLE employees (
employeeNumber int NOT NULL,
lastName varchar(50) NOT NULL,
firstName varchar(50) NOT NULL,
extension varchar(10) NOT NULL,
email varchar(100) NOT NULL,
officeCode varchar(10) NOT NULL,
reportsTo int DEFAULT NULL,
jobTitle varchar(50) NOT NULL,
PRIMARY KEY (employeeNumber)
);