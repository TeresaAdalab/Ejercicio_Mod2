USE tienda;
/* Ejercicio 1: Selecciona los apellidos que se encuentren en ambas tablas para employees y customers, con alias 'Apellidos'.. */
SELECT last_name AS Apellidos 
FROM tienda.employees
UNION
SELECT contact_last_name AS Apellidos 
FROM tienda.customers;

/* Selecciona los nombres con alias 'nombre' y apellidos, con alias 'Apellidos' tanto de los clientes como de los empleados de las tablas employees y customers*/
SELECT contact_first_name AS Nombre, 
contact_last_name AS Apellidos
FROM tienda.customers
UNION
SELECT 
first_name AS Nombre, 
last_name AS Apellidos
FROM tienda.employees;



/* Ejercico 3 Selecciona todos los nombres con alias 'nombre' y apellidos, con alias 'Apellidos' tanto de los clientes como de los empleados de las tablas employees y customers*/

SELECT contact_first_name AS Nombre, 
contact_last_name AS Apellidos
FROM tienda.customers
UNION ALL
SELECT 
first_name AS Nombre, 
last_name AS Apellidos
FROM tienda.employees;
/*Ejercico 4 Queremos ver ahora el employee_number como 'Número empleado', first_n_ame como 'nombre Empleado' y last_name como 'Apellido Empleado' para los empleados con employee_number: 1002,1076,1088 y 1612*/

SELECT 
employee_number AS "Número empleado", first_name AS "nombre Empleado", last_name AS "Apellido Empleado"
FROM tienda.employees
WHERE employee_number IN (1002, 1076, 1088, 1612);

/*Ejercico 5 Queremos ver ahora la 'ciudad' y los nombres de las empresas como 'nombre de la empresa ' de la tabla customers, que no estén en: Ireland, France, Germany.*/

SELECT 
city AS "ciudad", 
customer_name AS "Nombre de la emrpresa"
FROM tienda.customers
WHERE country NOT IN ("Ireland", "France", "Germany");

/*Ejercico 6 Encuentra los campos nombre del cliente y ciudad, de aquellas ciudades de la tabla de customers que terminen en 'on*/
SELECT 
customer_name AS "nombre_del_cliente", 
city AS "ciudad"
FROM tienda.customers
WHERE city LIKE '%on';

/*Ejercicio 7 Encuentra los campos nombre del cliente, ciudad de aquellas ciudades de la tabla de customers que terminen en 'on' y que unicamente sean de longitud 4.*/
SELECT customer_name AS nombre_del_cliente, city
FROM customers
WHERE city LIKE '_on' AND LENGTH(city) = 4;

SELECT 
customer_name AS "nombre_del_cliente", 
city AS "ciudad"
FROM tienda.customers
WHERE city LIKE '____%on';

/*Ejercico 8 Encuentra el nombre del cliente, primera dirección y ciudad de aquellas ciudades que contengan el número 3 en su dirección postal (o lo que es lo mismo, su primera dirección) */


SELECT customer_name AS nombre_del_cliente, address_line1 AS primera_direccion, city
FROM customers
WHERE address_line1 LIKE '%3%';


/*Ejercico 9 Encuentra el nombre del cliente, primera dirección y ciudad de aquellas ciudades que contengan el número 3 en su dirección postal (o lo que es lo mismo, su primera dirección) */

SELECT customer_name AS nombre_del_cliente, address_line1 AS primera_direccion, city
FROM customers
WHERE address_line1 LIKE '%3%' AND city NOT LIKE 'T%';

/*Ejercico 10 Encuentra el nombre del cliente, primera dirección y ciudad de aquellas ciudades que contengan el número 3 en su dirección postal (o lo que es lo mismo, su primera dirección) */

SELECT customer_name AS nombre_del_cliente, address_line1 AS primera_direccion, city
FROM tienda.customers
WHERE address_line1 REGEXP '[0-9]';
