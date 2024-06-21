-- ##################################
-- ###### llamar funciones ##########
-- ##################################

-- Función para listar el primer apellido de todos los empleados
SELECT listar_apellidos();

-- Función para listar el primer apellido de los empleados eliminando los apellidos que estén repetidos
SELECT listar_apellidos_distintos();

-- Procedimiento para listar todas las columnas de la tabla empleado
CALL listar_todos_empleados();

-- Procedimiento para listar el nombre y los apellidos de todos los empleados
CALL listar_nombre_apellidos();

-- Procedimiento para listar el identificador de los departamentos de los empleados que aparecen en la tabla empleado
CALL listar_id_departamentos();

-- Procedimiento para listar el identificador de los departamentos de los empleados eliminando los identificadores que aparecen repetidos
CALL listar_id_departamentos_distintos();

-- Procedimiento para listar el nombre y apellidos de los empleados en una única columna
CALL listar_nombre_completo();

-- Procedimiento para listar el nombre y apellidos de los empleados en una única columna en mayúsculas
CALL listar_nombre_completo_mayus();

-- Procedimiento para listar el nombre y apellidos de los empleados en una única columna en minúsculas
CALL listar_nombre_completo_minus();

-- Procedimiento para listar el identificador de los empleados junto al NIF en dos columnas
CALL listar_id_nif();

-- Función para calcular el presupuesto actual de un departamento
SELECT listar_presupuesto_actual();

-- Procedimiento para listar el nombre de cada departamento y el valor del presupuesto actual del que dispone
CALL listar_presupuesto_actual();

-- Procedimiento para listar el nombre de los departamentos y el valor del presupuesto actual ordenado de forma ascendente
CALL listar_presupuesto_actual_ascendente();

-- Procedimiento para listar el nombre de todos los departamentos ordenados de forma ascendente
CALL listar_departamentos_ascendente();

-- Procedimiento para listar el nombre de todos los departamentos ordenados de forma descendente
CALL listar_departamentos_descendente();

-- Procedimiento para listar los apellidos y el nombre de todos los empleados, ordenados de forma alfabética
CALL listar_empleados_por_apellidos();

-- Procedimiento para listar el nombre y el presupuesto de los 3 departamentos que tienen mayor presupuesto
CALL top_3_departamentos_mayor_presupuesto();

-- Procedimiento para listar el nombre y el presupuesto de los 3 departamentos que tienen menor presupuesto
CALL top_3_departamentos_menor_presupuesto();

-- Procedimiento para listar el nombre y el gasto de los 2 departamentos que tienen mayor gasto
CALL top_2_departamentos_mayor_gasto();

-- Procedimiento para listar el nombre y el gasto de los 2 departamentos que tienen menor gasto
CALL top_2_departamentos_menor_gasto();

-- Procedimiento para listar 5 filas a partir de la tercera fila de la tabla empleado
CALL listar_empleados_limit_offset();

-- Procedimiento para listar el nombre de los departamentos y el presupuesto de aquellos que tienen un presupuesto mayor o igual a 150000 euros
CALL listar_departamentos_presupuesto_mayor_igual_150000();

-- Procedimiento para listar el nombre de los departamentos y el gasto de aquellos que tienen menos de 5000 euros de gastos
CALL listar_departamentos_gasto_menor_5000();

-- Procedimiento para listar el nombre de los departamentos y el presupuesto de aquellos que tienen un presupuesto entre 100000 y 200000 euros
CALL listar_departamentos_presupuesto_entre_100000_y_200000();

-- Procedimiento para listar el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros
CALL listar_departamentos_no_presupuesto_entre_100000_y_200000();

-- Procedimiento para listar el nombre de los departamentos que tienen un presupuesto entre 100000 y 200000 euros utilizando BETWEEN
CALL listar_departamentos_presupuesto_entre_100000_y_200000_btw();

-- Procedimiento para listar el nombre de los departamentos que no tienen un presupuesto entre 100000 y 200000 euros utilizando BETWEEN
CALL listar_departamentos_no_presupuesto_entre_100000_y_200000_btw();

-- Procedimiento para listar el nombre de los departamentos, gastos y presupuesto de aquellos departamentos donde los gastos sean mayores que el presupuesto
CALL listar_departamentos_gastos_mayor_presupuesto();

-- Procedimiento para listar el nombre de los departamentos, gastos y presupuesto de aquellos departamentos donde los gastos sean menores que el presupuesto
CALL listar_departamentos_gastos_menor_presupuesto();

-- Procedimiento para listar el nombre de los departamentos, gastos y presupuesto de aquellos departamentos donde los gastos sean iguales al presupuesto
CALL listar_departamentos_gastos_igual_presupuesto();

-- Procedimiento para listar todos los datos de los empleados cuyo segundo apellido sea NULL
CALL listar_empleados_segundo_apellido_null();

-- Procedimiento para listar todos los datos de los empleados cuyo segundo apellido no sea NULL
CALL listar_empleados_segundo_apellido_no_null();

-- Procedimiento para listar todos los datos de los empleados cuyo segundo apellido sea López
CALL listar_empleados_segundo_apellido_lopez();

-- Procedimiento para listar todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno sin utilizar IN
CALL listar_empleados_segundo_apellido_diaz_o_moreno();

-- Procedimiento para listar todos los datos de los empleados cuyo segundo apellido sea Díaz o Moreno utilizando IN
CALL listar_empleados_segundo_apellido_diaz_o_moreno_in();

-- Procedimiento para listar los nombres, apellidos y nif de los empleados que trabajan en el departamento 3
CALL listar_empleados_departamento_3();

-- Procedimiento para listar los nombres, apellidos y nif de los empleados que trabajan en los departamentos 2, 4 o 5
CALL listar_empleados_departamentos_2_4_5();

-- Desarrollado por: Eduar Damian Chanaga Gonzalez / id:1095581647