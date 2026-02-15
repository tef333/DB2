-- 3 Proyectar orden jerarquico de los cargos de los empleados, mostrar el nombre del empelado y sus jefes
-- empleado, jefe, extraer emails de los dos (Las primeras 3 letras, luego rellenar 6 asteriscos a la izquierda)
 
 
SELECT
    E.FIRST_NAME || ' ' || E.LAST_NAME AS EMPLEADO,
    LPAD(SUBSTR(E.EMAIL, 1, 3), 9, '*') AS EMAIL_EMPLEADO,
 
    M.FIRST_NAME || ' ' || M.LAST_NAME AS JEFE,
    LPAD(SUBSTR(M.EMAIL, 1, 3), 9, '*') AS EMAIL_JEFE
 
FROM HR.EMPLOYEES E
LEFT JOIN HR.EMPLOYEES M ON E.MANAGER_ID = M.EMPLOYEE_ID
ORDER BY E.LAST_NAME;