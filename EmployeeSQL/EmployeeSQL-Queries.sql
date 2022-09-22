--Data Analysis
--Question #1
SELECT employees.emp_no
	,employees.last_name
	,employees.first_name
	,employees.sex
	,salaries.emp_no
	,salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--Question #2
SELECT first_name
	,last_name
	,hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--Question #3
SELECT departments.dept_no
	,departments.dept_name
	,dept_managers.emp_no
	,dept_managers.dept_no
	,employees.emp_no
	,employees.last_name
	,employees.first_name
FROM departments
INNER JOIN dept_managers ON
departments.dept_no=dept_managers.dept_no
INNER JOIN dept_emp ON
dept_managers.dept_no=dept_emp.dept_no
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no;

--Question #4
SELECT dept_emp.emp_no
	,employees.emp_no
	,employees.last_name
	,employees.first_name
	,departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no;

--Question #5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--Question #6
SELECT departments.dept_name
	,dept_emp.emp_no
	,employees.last_name
	,employees.first_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales';

--Question #7
SELECT dept_emp.emp_no
	,employees.last_name
	,employees.first_name
	,departments.dept_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Question #8 *Needs Work
SELECT last_name, COUNT (last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT (last_name) DESC;