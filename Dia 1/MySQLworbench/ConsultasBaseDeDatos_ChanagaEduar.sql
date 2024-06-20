-- ###############################
-- ######### Consultas ###########
-- ###############################

-- 1. Número de pacientes atendidos por cada médico
SELECT m.id_medico,p.nombre AS nombre_medico,COUNT(pa.id_paciente) AS numero_pacientes
FROM Medicos m
JOIN Persona p ON m.id_persona = p.id_persona
JOIN Pacientes pa ON m.id_medico = pa.id_medico_asignado
GROUP BY m.id_medico, p.nombre;

-- 2. Total de días de vacaciones planificadas y disfrutadas por cada empleado
SELECT e.id_empleado,    pe.nombre AS nombre_empleado,SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS total_dias_vacaciones
FROM Empleados e
JOIN     Persona pe ON e.id_persona = pe.id_persona
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, pe.nombre;

-- 3. Médicos con mayor cantidad de horas de consulta en la semana
SELECT m.id_medico,p.nombre AS nombre_medico,SUM(TIMESTAMPDIFF(HOUR, h.hora_inicio, h.hora_fin)) AS horas_semana
FROM Medicos m
JOIN Persona p ON m.id_persona = p.id_persona
JOIN Horarios h ON m.id_medico = h.id_medico
GROUP BY m.id_medico, p.nombre
ORDER BY horas_semana DESC;

-- 4. Número de sustituciones realizadas por cada médico sustituto
SELECT m.id_medico,p.nombre AS nombre_medico,    COUNT(s.id_sustitucion) AS numero_sustituciones
FROM Medicos m
JOIN Persona p ON m.id_persona = p.id_persona
JOIN Sustituciones s ON m.id_medico = s.id_medico_sustituto
GROUP BY m.id_medico, p.nombre;

-- 5. Número de médicos que están actualmente en sustitución
SELECT COUNT(DISTINCT id_medico_sustituto) AS medicos_en_sustitucion
FROM Sustituciones
WHERE CURDATE() BETWEEN fecha_alta AND fecha_baja;

-- 6. Horas totales de consulta por médico por día de la semana
SELECT m.id_medico,    p.nombre AS nombre_medico,    h.dia_semana,    SUM(TIMESTAMPDIFF(HOUR, h.hora_inicio, h.hora_fin)) AS horas_totales
FROM Medicos m
JOIN    Persona p ON m.id_persona = p.id_persona
JOIN Horarios h ON m.id_medico = h.id_medico
GROUP BY    m.id_medico, p.nombre, h.dia_semana;

-- 7. Médico con mayor cantidad de pacientes asignados
SELECT m.id_medico,p.nombre AS nombre_medico,COUNT(pa.id_paciente) AS numero_pacientes
FROM Medicos m
JOIN Persona p ON m.id_persona = p.id_persona
JOIN Pacientes pa ON m.id_medico = pa.id_medico_asignado
GROUP BY m.id_medico, p.nombre
ORDER BY numero_pacientes DESC LIMIT 1;

-- 8. Empleados con más de 10 días de vacaciones disfrutadas
SELECT e.id_empleado,pe.nombre AS nombre_empleado,SUM(DATEDIFF(v.fecha_fin, v.fecha_inicio) + 1) AS total_dias_vacaciones
FROM Empleados e
JOIN Persona pe ON e.id_persona = pe.id_persona
JOIN Vacaciones v ON e.id_empleado = v.id_empleado
GROUP BY e.id_empleado, pe.nombre
HAVING total_dias_vacaciones > 10;

-- 9. Médicos que actualmente están realizando una sustitución
SELECT m.id_medico,p.nombre AS nombre_medico
FROM Medicos m
JOIN Persona p ON m.id_persona = p.id_persona
JOIN Sustituciones s ON m.id_medico = s.id_medico_sustituto
WHERE CURDATE() BETWEEN s.fecha_alta AND s.fecha_baja;

-- 10. Promedio de horas de consulta por médico por día de la semana
SELECT h.dia_semana,AVG(TIMESTAMPDIFF(HOUR, h.hora_inicio, h.hora_fin)) AS promedio_horas
FROM Horarios h
GROUP BY h.dia_semana;


-- Desarrollado por: Eduar Damian Chanaga Gonzalez  / ID: 1095581647