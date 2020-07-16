-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees_tb.empl_no,employees_tb.last_name, employees_tb.first_name, employees_tb.sex, salary_tb.salary
FROM employees_tb
JOIN salary_tb ON employees_tb.empl_no = salary_tb.empl_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employees_tb.first_name, employees_tb.last_name, employees_tb.hire_date
FROM employees_tb
WHERE (EXTRACT (YEAR FROM hire_date)) = '1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager_tb.dept_no, department_tb.dept_name, dept_manager_tb.empl_no, employees_tb.last_name, employees_tb.first_name
FROM dept_manager_tb
JOIN department_tb ON dept_manager_tb.dept_no = department_tb.dept_no
JOIN employees_tb ON dept_manager_tb.empl_no = employees_tb.empl_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees_tb.empl_no,employees_tb.last_name, employees_tb.first_name, department_tb.dept_name
FROM employees_tb
JOIN dept_employee_tb ON employees_tb.empl_no = dept_employee_tb.empl_no
JOIN department_tb ON dept_employee_tb.dept_no = department_tb.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employees_tb.empl_no,employees_tb.last_name, employees_tb.first_name, employees_tb.sex
FROM employees_tb
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees_tb.empl_no,employees_tb.last_name, employees_tb.first_name, department_tb.dept_name
FROM employees_tb
JOIN dept_employee_tb ON employees_tb.empl_no = dept_employee_tb.empl_no
JOIN department_tb ON dept_employee_tb.dept_no = department_tb.dept_no
WHERE department_tb.dept_name = 'Sales' ;

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees_tb.empl_no,employees_tb.last_name, employees_tb.first_name, department_tb.dept_name
FROM employees_tb
JOIN dept_employee_tb ON employees_tb.empl_no = dept_employee_tb.empl_no
JOIN department_tb ON dept_employee_tb.dept_no = department_tb.dept_no
WHERE department_tb.dept_name = 'Sales' OR department_tb.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS no_of_empl_with_last_name
FROM employees_tb
GROUP BY last_name
ORDER BY no_of_empl_with_last_name DESC;

-- FOR BONUS __
CREATE VIEW employee_salary_vW AS
SELECT employees_tb.empl_no, title_tb.title_name, salary_tb.salary
FROM employees_tb
JOIN salary_tb ON employees_tb.empl_no = salary_tb.empl_no
JOIN title_tb ON employees_tb.title_id = title_tb.title_id;

SELECT *
FROM employee_salary_vw