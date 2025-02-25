USE tienda_zapatillas; 

ALTER TABLE zapatillas 
ADD COLUMN marca VARCHAR(45) NOT NULL, 
ADD COLUMN talla INT NOT NULL; 

ALTER TABLE empleados
MODIFY salario FLOAT NOT NULL; 

ALTER TABLE clientes
DROP COLUMN pais; 

ALTER TABLE facturas
ADD COLUMN total FLOAT; 

INSERT INTO zapatillas
	VALUES (1, 'XQYUN', 'negro', 'nike', 42),
    (2, 'UOPMN', 'rosas', 'nike', 39),
    (3, 'OPNYT', 'verdes', 'adidas', 35)
    ;
    
INSERT INTO empleados
VALUES (1, 'Laura', 'Alcobendas', 25987, '2010-09-03'),
(3, 'Ester', 'Oviedo', 30165.98, '2000-11-29'); 

ALTER TABLE empleados
MODIFY salario FLOAT; 

INSERT INTO empleados (id_empleado, nombre, tienda, salario, fecha_incorporacion)
VALUES (2, 'Maria', 'Sevilla', NULL, '2001-04-11');

INSERT INTO clientes 
VALUES (1, 'Monica', 123456789, 'monica@email.com', 'Calle Felicidad', 'Móstoles', 'Madrid', '28176'),
(2, 'Lorena', 289345678, 'lorena@email.com', 'Calle Alegria', 'Barcelona', 'Barcelona', '12346'),
(3, 'Carmen', 298463759, 'carmen@email.com', 'Calle del Color', 'Vigo', 'Pontevedra', '28176');

INSERT INTO facturas 
VALUES (1, '123', '2011-12-11', 1, 2, 1, 54.98),
(2, '1234', '2005-05-23', 1, 1, 3, 89.91),
(3, '12345', '2015-09-18', 2, 3, 3, 76.23);


USE tienda_zapatillas; 
UPDATE zapatillas
SET color = 'amarillas'
	WHERE color = 'rosas';
    
UPDATE empleados
SET tienda = 'A Coruña'
	WHERE tienda = 'Alcobendas';
    
SELECT * FROM empleados;

UPDATE clientes
SET numero_telefono = 123456728
	WHERE nombre = 'Monica';

SELECT * FROM clientes;

UPDATE facturas
SET total = 89.91
	WHERE id_factura = 2;

SELECT * FROM facturas;