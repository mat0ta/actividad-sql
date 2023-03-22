<h1 align = "center">Actividad SQL</h1>

En este [repositorio](https://github.com/mat0ta/actividad-sql) queda resuelta la actividad de SQL

<h2 align="center">Autores de esta actividad:</h3>

1. Martín Moreno
2. Diego de Santos

*** 

Hemos buscado un [dataset](https://www.kaggle.com/datasets/luciodias/brazil-oil-production) en Kaggle, y hemos encontrado un dataset que recoge datos de la recolección de petróleo y gas en Brasil.

![image](https://user-images.githubusercontent.com/91721855/226982787-4067bb1e-1955-438d-812a-85e9f47c9d77.png)

La única tabla presente en esta y que recoge todos los datos se llama *production*.

Primero hemos creado el archivo main.sql con los comandos y el archivo main.py desde python para poder ejecutarlos.

<h3 align="center">Comandos utilizados</h3>

Primero hemos seleccionado todas las columnas de la tabla y las hemos ordenados por el año en orden descendente utilizando 

**SELECT, ORDER BY, DESC**

```sql
SELECT * FROM production ORDER BY Year DESC;
```

***

Después hemos seleccionado solo las columnas entre el año 2005 y 2010 y solamente Junio y Octubre aplicando

**SELECT, WHERE, BETWEEN, AND**

```sql
SELECT * FROM production WHERE Year BETWEEN 2005 AND 2010 AND Month IS '6' OR Month IS '10';
```

***

Luego hemos seleccionados todos los elementos de la columna Field y los hemos actualizado capitalizando únicamente la primera letra usando:

**UPDATE, SET, LOWER, LEFT, SUBSTRING, LEN**

```sql
UPDATE production SET Field = LOWER(LEFT(Field, 1)) + SUBSTRING(Field, 2, LEN(Field));
```

***

Además de la columna de las instalaciones, hemos actualizado todos los datos que tenga un valor nulo son rellenadas con el valor "Desconocida" utilizando:

**UPDATE, SET, WHERE, NULL**

```sql
UPDATE production SET Installation = 'Desconocida' WHERE Installation IS NULL;
```

***

Además hemos eliminado todas las filas cuya producción se ha realizado en un pozo concreto en este caso (1-CSF-1-AL) aplicando:

**DELETE FROM, WHERE**

```sql
DELETE FROM production WHERE Well IS '1-CSF-1-AL';
```
