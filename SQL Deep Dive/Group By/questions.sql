/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT hire_date, count(emp_no)
FROM employees
GROUP BY hire_date
ORDER BY hire_date

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT e.emp_no, count(t.title) 
FROM employees as e
INNER JOIN titles as t ON e.emp_no = t.emp_no
WHERE EXTRACT(YEAR From e.hire_date) >= 1991
GROUP BY e.emp_no


/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT e.emp_no, d,de
FROM employees as e
