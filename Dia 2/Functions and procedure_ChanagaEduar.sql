-- ##################################
-- ######### Funciones ##############
-- ##################################

use dia2_2;

delimiter //

-- 1. Función para listar el primer apellido de todos los empleados
CREATE FUNCTION listar_apellidos()
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE apellidos TEXT;
    SELECT GROUP_CONCAT(apellido1 SEPARATOR ', ') INTO apellidos FROM empleado;
    RETURN apellidos;
END //

-- 2. Función para listar el primer apellido de los empleados eliminando los apellidos que estén repetidos
CREATE FUNCTION listar_apellidos_distintos()
RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE apellidos TEXT;
    SELECT GROUP_CONCAT(DISTINCT apellido1 SEPARATOR ', ') INTO apellidos FROM empleado;
    RETURN apellidos;
END //

-- 3. Procedimiento para listar todas las columnas de la tabla empleado
CREATE PROCEDURE listar_todos_empleados()
BEGIN
    SELECT * FROM empleado;
END //

-- 4. Procedimiento para listar el nombre y los apellidos de todos los empleados
CREATE PROCEDURE listar_nombre_apellidos()
BEGIN
    SELECT nombre, apellido1, apellido2 FROM empleado;
END //

-- 5. Procedimiento para listar el identificador de los departamentos de los empleados que aparecen en la tabla empleado
CREATE PROCEDURE listar_id_departamentos()
BEGIN
    SELECT id_departamento FROM empleado;
END //

-- 6. Procedimiento para listar el identificador de los departamentos de los empleados eliminando los identificadores que aparecen repetidos
CREATE PROCEDURE listar_id_departamentos_distintos()
BEGIN
    SELECT DISTINCT id_departamento FROM empleado;
END //

-- 7. Procedimiento para listar el nombre y apellidos de los empleados en una única columna
CREATE PROCEDURE listar_nombre_completo()
BEGIN
    SELECT CONCAT(nombre, ' ', apellido1, ' ', COALESCE(apellido2, '')) AS nombre_completo FROM empleado;
END //

-- 8. Procedimiento para listar el nombre y apellidos de los empleados en una única columna en mayúsculas
CREATE PROCEDURE listar_nombre_completo_mayus()
BEGIN
    SELECT UPPER(CONCAT(nombre, ' ', apellido1, ' ', COALESCE(apellido2, ''))) AS nombre_completo_mayus FROM empleado;
END //

-- 9. Procedimiento para listar el nombre y apellidos de los empleados en una única columna en minúsculas
CREATE PROCEDURE listar_nombre_completo_minus()
BEGIN
    SELECT LOWER(CONCAT(nombre, ' ', apellido1, ' ', COALESCE(apellido2, ''))) AS nombre_completo_minus FROM empleado;
END //

-- 10. Procedimiento para listar el identificador de los empleados junto al NIF en dos columnas
CREATE PROCEDURE listar_id_nif()
BEGIN
    SELECT 
        id, 
        SUBSTRING(nif, 1, LENGTH(nif) - 1) AS nif_digitos, 
        SUBSTRING(nif, -1) AS nif_letra 
    FROM empleado;
END //

delimiter ;

-- 11. Lista el nombre de cada departamento y el valor del presupuesto actual del que dispone
DELIMITER //

CREATE FUNCTION calcular_presupuesto_actual(presupuesto DOUBLE, gastos DOUBLE)
RETURNS DOUBLE
DETERMINISTIC
BEGIN
    RETURN presupuesto - gastos;
END //

DELIMITER ;


-- 12. Lista el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente
DELIMITER //

CREATE PROCEDURE listar_presupuesto_actual_ascendente()
BEGIN
    SELECT nombre, calcular_presupuesto_actual(presupuesto, gastos) AS presupuesto_actual
    FROM departamento
    ORDER BY presupuesto_actual ASC;
END //

DELIMITER ;

-- 13. Lista el nombre de todos los departamentos ordenados de forma ascendente
DELIMITER //

CREATE PROCEDURE listar_departamentos_ascendente()
BEGIN
    SELECT nombre
    FROM departamento
    ORDER BY nombre ASC;
END //

DELIMITER ;

-- 14. Lista el nombre de todos los departamentos ordenados de forma descendente
DELIMITER //

CREATE PROCEDURE listar_departamentos_descendente()
BEGIN
    SELECT nombre
    FROM departamento
    ORDER BY nombre DESC;
END //

DELIMITER ;

-- 15. Lista los apellidos y el nombre de todos los empleados, ordenados de forma alfabética teniendo en cuenta en primer lugar sus apellidos y luego su nombre
DELIMITER //

CREATE PROCEDURE listar_empleados_por_apellidos()
BEGIN
    SELECT apellido1, apellido2, nombre
    FROM empleado
    ORDER BY apellido1, apellido2, nombre;
END //

DELIMITER ;

-- 16. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen mayor presupuesto
DELIMITER //

CREATE PROCEDURE top_3_departamentos_mayor_presupuesto()
BEGIN
    SELECT nombre, presupuesto
    FROM departamento
    ORDER BY presupuesto DESC
    LIMIT 3;
END //

DELIMITER ;

-- 17. Devuelve una lista con el nombre y el presupuesto, de los 3 departamentos que tienen menor presupuesto
DELIMITER //

CREATE PROCEDURE top_3_departamentos_menor_presupuesto()
BEGIN
    SELECT nombre, presupuesto
    FROM departamento
    ORDER BY presupuesto ASC
    LIMIT 3;
END //

DELIMITER ;

-- 18. Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen mayor gasto
DELIMITER //

CREATE PROCEDURE top_2_departamentos_mayor_gasto()
BEGIN
    SELECT nombre, gastos
    FROM departamento
    ORDER BY gastos DESC
    LIMIT 2;
END //

DELIMITER ;

-- 19. Devuelve una lista con el nombre y el gasto, de los 2 departamentos que tienen menor gasto
DELIMITER //

CREATE PROCEDURE top_2_departamentos_menor_gasto()
BEGIN
    SELECT nombre, gastos
    FROM departamento
    ORDER BY gastos ASC
    LIMIT 2;
END //

DELIMITER ;

-- 20. Devuelve una lista con 5 filas a partir de la tercera fila de la tabla empleado. La tercera fila se debe incluir en la respuesta. La respuesta debe incluir todas las columnas de la tabla empleado.
DELIMITER //

CREATE PROCEDURE listar_empleados_limit_offset()
BEGIN
    SELECT *
    FROM empleado
    LIMIT 2, 5; -- Offset 2, Limit 5
END //

DELIMITER ;

-- 21. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto mayor o igual a 150000 euros
DELIMITER //

CREATE PROCEDURE listar_departamentos_presupuesto_mayor_igual_150000()
BEGIN
    SELECT nombre, presupuesto
    FROM departamento
    WHERE presupuesto >= 150000;
END //

DELIMITER ;

-- 22. Devuelve una lista con el nombre de los departamentos y el gasto, de aquellos que tienen menos de 5000 euros de gastos
DELIMITER //

CREATE PROCEDURE listar_departamentos_gasto_menor_5000()
BEGIN
    SELECT nombre, gastos
    FROM departamento
    WHERE gastos < 5000;
END //

DELIMITER ;

-- 23. Devuelve una lista con el nombre de los departamentos y el presupuesto, de aquellos que tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador BETWEEN
DELIMITER //

CREATE PROCEDURE listar_departamentos_presupuesto_entre_100000_y_200000()
BEGIN
    SELECT nombre, presupuesto
    FROM departamento
    WHERE presupuesto >= 100000 AND presupuesto <= 200000;
END //

DELIMITER ;

-- 24. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros. Sin utilizar el operador BETWEEN
DELIMITER //

CREATE PROCEDURE listar_departamentos_no_presupuesto_entre_100000_y_200000()
BEGIN
    SELECT nombre
    FROM departamento
    WHERE presupuesto < 100000 OR presupuesto > 200000;
END //

DELIMITER ;

-- 25. Devuelve una lista con el nombre de los departamentos que tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador BETWEEN
DELIMITER //

CREATE PROCEDURE listar_departamentos_presupuesto_entre_100000_y_200000_btw()
BEGIN
    SELECT nombre
    FROM departamento
    WHERE presupuesto BETWEEN 100000 AND 200000;
END //

DELIMITER ;

-- 26. Devuelve una lista con el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros. Utilizando el operador BETWEEN
DELIMITER //

CREATE PROCEDURE listar_departamentos_no_presupuesto_entre_100000_y_200000_btw()
BEGIN
    SELECT nombre
    FROM departamento
    WHERE presupuesto NOT BETWEEN 100000 AND 200000;
END //

DELIMITER ;

-- 27. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean mayores que el presupuesto del que disponen
DELIMITER //

CREATE PROCEDURE listar_departamentos_gastos_mayor_presupuesto()
BEGIN
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos > presupuesto;
END //

DELIMITER ;

-- 28. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean menores que el presupuesto del que disponen
DELIMITER //

CREATE PROCEDURE listar_departamentos_gastos_menor_presupuesto()
BEGIN
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos < presupuesto;
END //

DELIMITER ;

-- 29. Devuelve una lista con el nombre de los departamentos, gastos y presupuesto, de aquellos departamentos donde los gastos sean iguales al presupuesto del que disponen
DELIMITER //

CREATE PROCEDURE listar_departamentos_gastos_igual_presupuesto()
BEGIN
    SELECT nombre, gastos, presupuesto
    FROM departamento
    WHERE gastos = presupuesto;
END //

DELIMITER ;

-- 30. Lista todos los datos de los empleados cuyo segundo apellido sea NULL
DELIMITER //

CREATE PROCEDURE listar_empleados_segundo_apellido_null()
BEGIN
    SELECT *
    FROM empleado
    WHERE apellido2 IS NULL;
END //

DELIMITER ;

-- 31. Lista todos los datos de los empleados cuyo segundo apellido no sea NULL
DELIMITER //

CREATE PROCEDURE listar_empleados_segundo_apellido_no_null()
BEGIN
    SELECT *
    FROM empleado
    WHERE apellido2 IS NOT NULL;
END //

DELIMITER ;

-- 32. Lista todos los datos de los empleados cuyo segundo apellido sea López
DELIMITER //

CREATE PROCEDURE listar_empleados_segundo_apellido_lopez()
BEGIN
    SELECT *
    FROM empleado
    WHERE apellido2 = 'López';
END //

DELIMITER ;

-- 33. Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. Sin utilizar el operador IN
DELIMITER //

CREATE PROCEDURE listar_empleados_segundo_apellido_diaz_o_moreno()
BEGIN
    SELECT *
    FROM empleado
    WHERE apellido2 = 'Díaz' OR apellido2 = 'Moreno';
END //

DELIMITER ;

-- 34. Lista todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno. Utilizando el operador IN
DELIMITER //

CREATE PROCEDURE listar_empleados_segundo_apellido_diaz_o_moreno_in()
BEGIN
    SELECT *
    FROM empleado
    WHERE apellido2 IN ('Díaz', 'Moreno');
END //

DELIMITER ;

-- 35. Lista los nombres, apellidos y nif de los empleados que trabajan en el departamento 3
DELIMITER //

CREATE PROCEDURE listar_empleados_departamento_3()
BEGIN
    SELECT nombre, apellido1, apellido2, nif
    FROM empleado
    WHERE id_departamento = 3;
END //

DELIMITER ;

-- 36. Lista los nombres, apellidos y nif de los empleados que trabajan en los departamentos 2, 4 o 5
DELIMITER //

CREATE PROCEDURE listar_empleados_departamentos_2_4_5()
BEGIN
    SELECT nombre, apellido1, apellido2, nif
    FROM empleado
    WHERE id_departamento IN (2, 4, 5);
END //

DELIMITER ;

-- Desarrollado por: Eduar Damian Chanaga Gonzalez / id:1095581647