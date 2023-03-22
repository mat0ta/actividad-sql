-- Selecciona todas las columnas de la tabla production y las ordena por el campo Year en orden descendente
SELECT * FROM production ORDER BY Year DESC;

-- Selecciona todas las filas de la tabla que estén entre el año 2005 y 2010 y que hayan sido realizadas en los meses de Junio y Octubre
SELECT * FROM production WHERE Year BETWEEN 2005 AND 2010 AND Month IS '6' OR Month IS '10';

-- Selcciona todos los elementos de la columna Field y los actualiza capitalizando únicamente la primera letra
UPDATE production SET Field = LOWER(LEFT(Field, 1)) + SUBSTRING(Field, 2, LEN(Field));

-- De la columna de las instalaciones, todas aquellas que tenga un valor nulo son rellenadas con el valor "Desconocida"
UPDATE production SET Installation = 'Desconocida' WHERE Installation IS NULL;

-- Elimina todas las filas cuya producción se ha realizado en un pozo concreto
DELETE FROM production WHERE Well IS '1-CSF-1-AL';