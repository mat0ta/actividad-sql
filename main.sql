-- Selecciona todas las columnas de la tabla production y las ordena por el campo Year en orden descendente
SELECT * FROM production ORDER BY Year DESC;

-- Selecciona todas las filas de la tabla que estén entre el año 2005 y 2010 y que hayan sido realizadas entre los meses de Junio y Octubre
SELECT * FROM production WHERE Year BETWEEN 2005 AND 2010 AND Month >= 6 AND Month <= 10;

-- Selecciona todos los elementos de la columna Field y los actualiza capitalizando únicamente la primera letra
UPDATE production SET Field = UPPER(substr(Field, 1, 1)) || LOWER(substr(Field, 2, LENGTH(Field)));

-- De la columna de las instalaciones, todas aquellas que tenga un valor nulo son rellenadas con el valor "Desconocida"
UPDATE production SET Installation = 'Desconocida' WHERE Installation IS NULL;

-- Elimina todas las filas cuya producción se ha realizado en un pozo concreto
DELETE FROM production WHERE Well IS '1-CSF-1-AL';

-- Inserta una nueva fila en la tabla production con nuevos datos
INSERT INTO production (Year, Month, State, Basin, Field, Well, Environment, Installation, 'Oil (m³)') VALUES (2023, 3, 'MAD', 'Madrid', 'Madrid', '14-ALO-33', 'Land', 'Nanolandia', 333.14);

-- Reemplaza todos los años 2021 con 2022
UPDATE production SET Year = 2022 WHERE Year = 2020;

-- Elimina todas los datos entre el año 1993 y 1995
DELETE FROM production WHERE Year BETWEEN 1993 AND 1995;

-- Cambia los datos del environment de Sea a Ocean
UPDATE production SET Environment = 'Ocean' WHERE Environment = 'Sea';

-- Elimina todas los datos de enero
DELETE FROM production WHERE Month = 1;