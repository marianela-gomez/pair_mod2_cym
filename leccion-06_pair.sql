USE northwind; 

-- Conocer a todos los emplead@s:
SELECT EmployeeID, LastName, FirstName
	FROM employees;

-- Conocer los productos más baratos, cuyo precio sea menor o igual que 5:
SELECT *
	FROM products
    WHERE UnitPrice <=5;
    
-- Conocer que productos no tiene precio, están vacíos, es decir NULL:
SELECT *
	FROM products
    WHERE UnitPrice IS NULL; 
    
-- Ahora obtén los datos de aquellos productos con un precio menor a 15 dólares, 
-- pero sólo aquellos que tienen un ID menor que 20 (para tener una muestra significativa 
-- pero no tener que ver todos los productos existentes).
-- 💡 Pista 💡 Recuerda que podemos incluir varias condiciones en el WHERE.

SELECT *
	FROM products
    WHERE ProductID <20 AND UnitPrice <15;
    
-- Cambiando de operadores: Ahora vamos a hacer la misma consulta que en ejercicio anterior,
-- pero invirtiendo el uso de los operadores y queremos saber aquellos que tengan un precio 
-- superior a 15 dólares y un ID superior a 20.. 💡 Pista 💡 Podemos usar NOT

SELECT *
	FROM products
    WHERE NOT ProductID <20 AND NOT UnitPrice <15;
    

-- Conociendo los países a los que vendemos: A Northwind le interesa conocer los datos de los países 
-- que hacen pedidos (orders) para focalizar el negocio en esas regiones y al mismo tiempo crear 
-- campañas de marketing para conseguir mejorar en las otras regiones. Realiza una consulta para obtener ese dato.

SELECT DISTINCT ShipCountry 
	FROM orders;
    

    
    
