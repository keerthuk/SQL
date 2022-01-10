--	 Write a SQL query to find the salesperson and customer who belongs to same city. Return Salesman, cust_name and city
SELECT Salesman.name,Customer.cust_name, Salesman.city 
FROM Salesman, Customer
WHERE Salesman.city = Customer.city 

--write a SQL query to find those orders where order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city
SELECT * FROM Orders

SELECT Orders.ord_no, Orders.purch_amt, Customer.cust_name, Customer.city 
FROM Orders, Customer
WHERE Orders.customer_id = Customer.customer_id AND Orders.purch_amt BETWEEN 500 AND 2000

--write a SQL query to find the salesperson(s) and the customer(s) he handle. Return Customer Name, city, Salesman, commission
SELECT * FROM Customer
SELECT * FROM Salesman

SELECT Customer.cust_name, Customer.city, Customer.salesman_id,Salesman.commission
FROM Customer, Salesman
WHERE Salesman.salesman_id = Customer.salesman_id 

-- write a SQL query to find those salespersons who received a commission from the company more than 12%. Return Customer Name, 
-- customer city, Salesman, commission.

SELECT Customer.cust_name, Customer.city,Customer.salesman_id
FROM Customer INNER JOIN Salesman 
ON Customer.salesman_id = Salesman.salesman_id and Salesman.commission > 0.12

--write a SQL query to find those salespersons do not live in the same city where their customers live and received a 
-- commission from the company more than 12%. Return Customer Name, customer city, Salesman, salesman city, commission

SELECT Customer.cust_name, Customer.city 'cust_city', Salesman.salesman_id, Salesman.city 'salesman_city', Salesman.commission
From Customer INNER JOIN Salesman
ON Customer.salesman_id = Salesman.salesman_id AND Salesman.commission > 0.12 AND Customer.city != Salesman.city