-DATA ANALYSIS

Question 1
--------------------------------------------------------------
SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
FROM employees AS emp
JOIN salaries AS sal
ON emp.emp_no=sal.emp_no

Question 2
--------------------------------------------------------------
ALTER TABLE employees ALTER COLUMN hire_date TYPE VARCHAR;
SELECT * FROM employees WHERE hire_date LIKE '1986%'


Question 3
---------------------------------------------------------------
SELECT dep.dept_no, dep.dept_name, man.emp_no, emp.last_name, emp.first_name, title.from_date, title.to_date
FROM departments AS dep
JOIN department_manager AS man
ON dep.dept_no= man.dept_no
JOIN employees AS emp
ON man.emp_no = emp.emp_no
JOIN title
ON man.emp_no = title.emp_no


Question 4
---------------------------------------------------------------
SELECT demp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM department_employees AS demp
JOIN employees AS emp
ON demp.emp_no = emp.emp_no
JOIN departments as dep
ON demp.dept_no = dep.dept_no



Question 5
---------------------------------------------------------------
SELECT * FROM employees
WHERE first_name ='Hercules' AND
last_name LIKE 'B%'



Question 6
---------------------------------------------------------------
SELECT demp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM department_employees AS demp
JOIN employees AS emp
ON demp.emp_no=emp.emp_no
JOIN departments AS dep
ON demp.dept_no=dep.dept_no
WHERE demp.dept_no='d007' 



Question 7
---------------------------------------------------------------
SELECT demp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM department_employees AS demp
JOIN employees AS emp
ON demp.emp_no=emp.emp_no
JOIN departments AS dep
ON demp.dept_no=dep.dept_no
WHERE demp.dept_no='d007' OR demp.dept_no='d005'


Question 8
---------------------------------------------------------------
SELECT last_name, COUNT(last_name) AS "Frequency of Employee Last Names"
FROM employees 
GROUP BY last_name
ORDER BY 2 DESC