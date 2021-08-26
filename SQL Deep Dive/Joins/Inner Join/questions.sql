
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
SELECT b.customerid, b.state, a.orderid, a.orderdate
FROM orders AS a
INNER JOIN customers as b ON b.customerid = a.customerid
AND b.state IN ('OH', 'NY', 'OR')
ORDER BY a.customerid

/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT a.prod_id, a.price, a.title, b.quan_in_stock, b.sales
FROM products AS a
LEFT OUTER JOIN inventory AS b ON a.prod_id = b.prod_id
ORDER BY a.emp_no

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT a.emp_no, b.from_date, b.to_date, CONCAT(a.first_name, a.last_name) AS "name",
c.dept_name
FROM employees AS a
LEFT OUTER JOIN dept_emp AS b ON a.emp_no = b.emp_no
LEFT OUTER JOIN departments AS c ON c.dept_no = b.dept_no
ORDER BY a.emp_no

