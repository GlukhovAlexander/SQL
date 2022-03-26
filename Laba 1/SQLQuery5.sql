SELECT DISTINCT DEPARTMENT.name, LOCATION.regional_group
FROM DEPARTMENT
JOIN LOCATION ON (LOCATION.location_id = DEPARTMENT.location_id)
JOIN EMPLOYEE  ON (EMPLOYEE.department_id = DEPARTMENT.department_id)
JOIN EMPLOYEE AS WORKER ON (WORKER.department_id = DEPARTMENT.department_id)
JOIN JOB ON (JOB.job_id = EMPLOYEE.job_id)
WHERE (JOB.[function] = 'MANAGER') AND (EMPLOYEE.salary - WORKER.salary) > 1500 AND WORKER.department_id = EMPLOYEE.department_id
