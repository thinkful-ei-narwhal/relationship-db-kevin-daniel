-- 1. How many people work in the Sales department?

SELECT COUNT(dept_name) as people 
FROM department 
JOIN employee ON department.id = employee.department 
WHERE dept_name = 'Sales';

-- 2. List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT emp_name 
FROM employee 
JOIN employee_project ON employee.id = employee_project.emp_id 
JOIN project ON employee_project.emp_id = project.id 
WHERE project_name = 'Plan christmas party';

-- 3. List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.

SELECT e.emp_name
FROM department d
JOIN employee e
ON d.id = e.id
JOIN employee_project
ON e.id = employee_project.emp_id
JOIN project
ON employee_project.emp_id = project.id
where project_name = 'Watch paint dry';

-- 4. Which projects are the Sales department employees assigned to?

SELECT p.project_name as Project_name, e.emp_name as Employee_name
FROM department d
JOIN employee e
ON d.id = e.department
JOIN employee_project ep
ON e.id = ep.emp_id
JOIN project p
ON ep.project_id = p.id
WHERE d.dept_name = 'Sales'

-- 5. List only the managers that are assigned to the 'Watch paint dry' project.

SELECT e.emp_name as Employee_name
FROM department d
JOIN employee e
ON d.manager = e.id 
JOIN employee_project ep 
ON e.id = ep.emp_id
JOIN project p 
ON ep.project_id = p.id 
WHERE p.project_name = 'Watch paint dry';