-- ################################################
-- ############       call's      #################
-- ## Consultas multitabla (Composición externa) ##
-- ################################################
use dia2_2;


-- 1. Devuelve un listado con todos los empleados junto con los datos de los
-- departamentos donde trabajan. Este listado también debe incluir los
-- empleados que no tienen ningún departamento asociado.

CALL empleado_departamento_todos();

-- 2. Devuelve un listado donde sólo aparezcan aquellos empleados que no
-- tienen ningún departamento asociado.

call empleados_sin_departamento();

-- 3. Devuelve un listado donde sólo aparezcan aquellos departamentos que no
-- tienen ningún empleado asociado.

call departamento_sin_empleado();

-- 4. Devuelve un listado con todos los empleados junto con los datos de los
-- departamentos donde trabajan. El listado debe incluir los empleados que no
-- tienen ningún departamento asociado y los departamentos que no tienen
-- ningún empleado asociado. Ordene el listado alfabéticamente por el
-- nombre del departamento.

call todos_empleados_todos_departamentos();


-- 5. Devuelve un listado con los empleados que no tienen ningún departamento
-- asociado y los departamentos que no tienen ningún empleado asociado.
-- Ordene el listado alfabéticamente por el nombre del departamento.
call sin_empleado_sin_departamento()

-- Desarrollado por: Eduar Damian Chanaga Gonzalez / ID: 1095581647