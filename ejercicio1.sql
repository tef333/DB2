-- Cuantos empleados han pasado por más de un cargo en la compañía
SELECT   
    e.EMPLOYEE_ID AS ID,  
    e.FIRST_NAME || ' ' || e.LAST_NAME AS NOMBRE_COMPLETO,  
    COUNT(hc.JOB_ID) AS NUMERO_CARGOS  
FROM hr.EMPLOYEES e  
LEFT JOIN hr.JOB_HISTORY hc   
    ON e.EMPLOYEE_ID = hc.EMPLOYEE_ID  
GROUP BY e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME  
HAVING COUNT(hc.JOB_ID) > 1 
ORDER BY e.EMPLOYEE_ID ; 