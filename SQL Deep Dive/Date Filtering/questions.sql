/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT * FROM employees
WHERE Extract(year FROM AGE(birth_date)) > 60;

/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

SELECT count(emp_no) FROM employees
WHERE EXTRACT(month FROM "hire_date") = 2;

/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

SELECT count(emp_no) FROM employees
WHERE EXTRACT(month FROM "birth_date") = 11;

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee? (Use the analytical function MAX)
*/

SELECT max(AGE(birth_date) FROM employees;

/*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

SELECT count(order_id) FROM orders
WHERE DATE_TRUNC(month, order_date) = date '2004-01-01';

