SELECT DISTINCT DEPARTMENT.name, LOCATION.regional_group
FROM DEPARTMENT
JOIN LOCATION ON (LOCATION.location_id = DEPARTMENT.location_id)
JOIN EMPLOYEE AS WORKER ON (WORKER.department_id = DEPARTMENT.department_id)
JOIN EMPLOYEE AS MANAGER ON (MANAGER.employee_id = WORKER.manager_id)
WHERE (MANAGER.salary - WORKER.salary) > 1500 AND WORKER.department_id = MANAGER.department_id