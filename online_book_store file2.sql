#simple query for project 

SELECT * FROM book;
SELECT * FROM customer ;
SELECT * FROM orders;

ALTER TABLE book
CHANGE gener category VARCHAR(25);

SELECT * FROM book 
WHERE category="Education";

SELECT  publish_year,
title AS book_after_2013 
FROM book
WHERE publish_year >2013;

SELECT * FROM customer
WHERE city="pune";


SELECT * FROM book;
SELECT * FROM customer ;
SELECT * FROM orders;


SELECT * FROM orders
where order_date BETWEEN  '2024-1-12' AND '2024-2-1';

SELECT SUM(STOCK) AS total_stock
FROM book;

SELECT * FROM  book
ORDER BY pricee DESC LIMIT 1;

SELECT * FROM  orders 
WHERE quntity >2;

SELECT * FROM orders 
WHERE total_amount>1000;

SELECT DISTINCT category FROM book;

SELECT * FROM book
ORDER BY stock LIMIT 5;

SELECT SUM(total_amount) AS all_revenue 
FROM orders;

SELECT * FROM book;
SELECT * FROM customer ;
SELECT * FROM orders;

SELECT b.category, SUM(o.quntity) AS TOTAL_QUNTITY
FROM book b
JOIN orders o
ON o.book_id = b.book_id
GROUP BY b.category;

SELECT AVG(pricee) AS avg_price
FROM book 
WHERE category="web";

SELECT o.cust_id , c.first_name, COUNT(o.order_id) AS TOTAL_order
FROM orders o
JOIN customer c
ON c.cust_id = o.cust_id
GROUP BY order_id
HAVING COUNT(order_id)=1;