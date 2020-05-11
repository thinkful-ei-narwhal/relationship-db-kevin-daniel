1.

How many people work in the Sales department?

SELECT COUNT(dept_name) as people 
FROM department 
JOIN employee ON department.id = employee.department 
WHERE dept_name = 'Sales';

2.

List the names of all employees assigned to the 'Plan Christmas party' project.

SELECT emp_name 
FROM employee 
JOIN employee_project ON employee.id = employee_project.emp_id 
JOIN project ON employee_project.emp_id = project.id 
WHERE project_name = 'Plan christmas party';

3. 

List the names of employees from the Warehouse department that are assigned to the 'Watch paint dry' project.