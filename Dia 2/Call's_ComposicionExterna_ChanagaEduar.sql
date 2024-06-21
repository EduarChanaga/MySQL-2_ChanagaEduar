-- ##################################################
-- ############### llamar funciones #################
-- ######### multitabla (Composición interna) #######
-- ##################################################

-- 1. Devuelve un listado con los empleados y los datos de los departamentos
-- donde trabaja cada uno.
call empleados_departamentos();

-- 2. Devuelve un listado con los empleados y los datos de los departamentos
-- donde trabaja cada uno. Ordena el resultado, en primer lugar por el nombre
-- del departamento (en orden alfabético) y en segundo lugar por los apellidos
-- y el nombre de los empleados.
call empleados_departamento_ordenado();


-- 3. Devuelve un listado con el identificador y el nombre del departamento,
-- solamente de aquellos departamentos que tienen empleados.
call departamento_con_empleados();

-- 4. Devuelve un listado con el identificador, el nombre del departamento y el
-- valor del presupuesto actual del que dispone, solamente de aquellos
-- departamentos que tienen empleados. El valor del presupuesto actual lo
-- puede calcular restando al valor del presupuesto inicial
-- (columna presupuesto) el valor de los gastos que ha generado
-- (columna gastos).
call presupuesto_departamento_con_empleados();

-- 5. Devuelve el nombre del departamento donde trabaja el empleado que tiene
-- el nif 38382980M.
call departamento_empleado_38382980M();
 
 -- 6. Devuelve el nombre del departamento donde trabaja el empleado Pepe Ruiz
-- Santana.
call departamento_empleado_peperuizsantana();

-- 7. Devuelve un listado con los datos de los empleados que trabajan en el
-- departamento de I+D. Ordena el resultado alfabéticamente.
call empleados_departamento_ID();

-- 8. Devuelve un listado con los datos de los empleados que trabajan en el
-- departamento de Sistemas, Contabilidad o I+D. Ordena el resultado
-- alfabéticamente.
call empleados_departamento_s_c_ID();

-- 9. Devuelve una lista con el nombre de los empleados que tienen los
-- departamentos que no tienen un presupuesto entre 100000 y 200000 euros.
call empleado_departamento_presupuesto_100000_200000();


-- 10. Devuelve un listado con el nombre de los departamentos donde existe
-- algún empleado cuyo segundo apellido sea NULL. Tenga en cuenta que no
-- debe mostrar nombres de departamentos que estén repetidos.
call departamento_apellido2_null();
-- Desarrollado por: Eduar Damian Chanaga Gonzalez / id:1095581647