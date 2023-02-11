
-- INSERT INTO orders(order_date, amount, customer_id) VALUES('2022-11-11', 99.78, 7);          
-- // This above line is error, as we can't insert any customer_id in Child Table(orders) which is not in master table(customers)

-- 2. INNER JOINS
-- . Select all records FROM A and B where join condition is met

SELECT * FROM customers         					-- Join customers 
JOIN orders											-- with orders
ON customers.customer_id = orders.customer_id  	-- where customer_id in customers table = customer_id in orders table
WHERE customers.customer_id = 1;

SELECT first_name, last_name, order_date, amount FROM customers         					
JOIN orders											
ON customers.customer_id = orders.customer_id  	
WHERE customers.customer_id = 1;
			
-- INNER JOIN With GROUP BY
SELECT first_name, last_name, SUM(amount) AS total FROM customers         					
JOIN orders											
ON customers.customer_id = orders.customer_id  	
GROUP BY first_name, last_name
ORDER BY total;

-- 3. LEFT JOIN
-- Select everything from A and matching cols from B
SELECT first_name, last_name, order_date, amount FROM customers         					
LEFT JOIN orders											
ON customers.customer_id = orders.customer_id;


SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent FROM customers         					
LEFT JOIN orders											
ON customers.customer_id = orders.customer_id
GROUP BY first_name, last_name;


-- 4. RIGHT JOIN
-- . Select everything from B and matching cols from A

-- 5. ON DELETE CASCADE
-- . Foreign key constraint: We can't delete customer_id from customers table if that is customer_id in orders table
-- . So if we wanna delete this and the corresponding rows in orders table
--  we use ON DELETE CASCADE
-- 		       OR 
-- 		   ON DELETE NULL
