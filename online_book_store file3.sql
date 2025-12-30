# advance query of project 
USE online_book_store;
SELECT * FROM orders;
SELECT * FROM book;
SELECT * FROM customer;
# sold book by category wise tottal
SELECT b.category , SUM(o.quntity) AS total_book_sold
FROM orders o
JOIN book b ON o.book_id = b.book_id
GROUP BY b.category;

# avg book price of category web
SELECT AVG(pricee) AS avg_book_price_web 
FROM book 
WHERE category="web" ;

SELECT o.cust_id , c.first_name ,COUNT(o.order_id) AS total_order
FROM orders o
JOIN customer c ON c.cust_id = o.cust_id
GROUP BY cust_id 
HAVING COUNT(order_id)>1;


SELECT o.book_id, b.title, COUNT(o.order_id) AS ORDER_COUNT
FROM orders o
JOIN book b
ON o.book_id = b.book_id
GROUP BY o.book_id, b.title
ORDER BY ORDER_COUNT DESC
LIMIT 1;

SELECT b.author , SUM(o.quntity) AS TOTTAL_AUTHORWISE_SOLD_BOOK
FROM orders o 
JOIN book b 
ON o.book_id = b.book_id 
GROUP BY b.author;

SELECT c.cust_id ,c.first_name, SUM(O.total_amount) AS total_spent
FROM customer c
JOIN orders o 
ON o.cust_id = c.cust_id
GROUP BY c.cust_id , c.first_name
ORDER BY total_spent DESC LIMIT 1;

SELECT b.book_id , b.title , b.stock , COALESCE(SUM(o.quntity),0) AS order_quntity ,
 b.stock-COALESCE(SUM(o.quntity),0) AS remaining_stock_book
FROM book b 
LEFT JOIN orders o 
ON o.book_id = b.book_id 
GROUP BY b.book_id;
