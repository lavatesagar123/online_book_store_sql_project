#implememtation of project and table and data 


CREATE DATABASE online_book_store;
USE online_book_store;
CREATE TABLE book(
book_id SERIAL PRIMARY KEY ,
title VARCHAR(20),
author VARCHAR(25),
gener VARCHAR(20),
publish_year INT,
pricee NUMERIC(10,2),
stock INT
);

INSERT INTO book (title, author, gener, publish_year, pricee, stock) VALUES
('Java Basics','James Gosling','Programming',2015,450.00,30),
('Python Guide','Guido Rossum','Programming',2018,550.00,25),
('C Language','Dennis Ritchie','Programming',2012,300.00,40),
('DBMS','Navathe','Education',2016,600.00,20),
('Operating System','Galvin','Education',2014,650.00,15),
('Data Structure','Mark Allen','Education',2017,500.00,35),
('Web Dev','Tim Berners','Technology',2019,700.00,18),
('AI Intro','Andrew Ng','Technology',2020,800.00,22),
('ML Basics','Tom Mitchell','Technology',2018,750.00,16),
('Networking','Tanenbaum','Education',2013,620.00,28),
('Cloud Comp','Raj Kumar','Technology',2021,900.00,12),
('Cyber Sec','Kevin Mitnick','Technology',2019,850.00,14),
('Linux OS','Linus Torvalds','Education',2011,400.00,50),
('Software Eng','Ian Sommerville','Education',2016,680.00,26),
('Big Data','Viktor Mayer','Technology',2020,920.00,10),
('HTML CSS','Jon Duckett','Web',2017,480.00,33),
('JavaScript','Brendan Eich','Web',2018,520.00,29),
('React JS','Dan Abramov','Web',2021,780.00,21),
('Spring Boot','Rod Johnson','Programming',2019,830.00,19),
('PHP MySQL','Rasmus Lerdorf','Web',2014,460.00,31);


CREATE TABLE customer(
cust_id  SERIAL primary KEY ,
first_name VARCHAR(20),
email VARCHAR(20),
phone VARCHAR(20),
city VARCHAR(20),
country VARCHAR(20)
);

INSERT INTO customer (first_name, email, phone, city, country) VALUES
('Sagar','sagar@mail.com','999900001','Pune','India'),
('Amit','amit@mail.com','999900002','Mumbai','India'),
('Rohit','rohit@mail.com','999900003','Delhi','India'),
('Neha','neha@mail.com','999900004','Pune','India'),
('Priya','priya@mail.com','999900005','Mumbai','India'),
('Ankit','ankit@mail.com','999900006','Delhi','India'),
('alfiya','sa@mail.com','999900007','Pune','India'),
('Rahul','rahul@mail.com','999900008','Mumbai','India'),
('Kiran','kiran@mail.com','999900009','Delhi','India'),
('Pooja','pooja@mail.com','999900010','Pune','India'),
('Vikas','vikas@mail.com','999900011','Mumbai','India'),
('Nikhil','nikhil@mail.com','999900012','Delhi','India'),
('Riya','riya@mail.com','999900013','Pune','India'),
('Manoj','manoj@mail.com','999900014','Mumbai','India'),
('Sonal','sonal@mail.com','999900015','Delhi','India'),
('Akash','akash@mail.com','999900016','Pune','India'),
('Meena','meena@mail.com','999900017','Mumbai','India'),
('Arjun','arjun@mail.com','999900018','Delhi','India'),
('Komal','komal@mail.com','999900019','Pune','India'),
('Yash','yash@mail.com','999900020','Mumbai','India');

CREATE TABLE orders(
order_id SERIAL PRIMARY KEY,
book_id  INT REFERENCES book(book_id),
cust_id  INT REFERENCES customer(cust_id),
order_date DATE,
quntity INT, 
total_amount NUMERIC(10,2));


INSERT INTO orders (book_id, cust_id, order_date, quntity, total_amount) VALUES
(1,1,'2024-01-10',2,900.00),
(2,2,'2024-01-12',1,550.00),
(3,3,'2024-01-15',3,900.00),
(4,4,'2024-01-18',1,600.00),
(5,5,'2024-01-20',2,1300.00),
(6,6,'2024-01-22',1,500.00),
(7,7,'2024-01-25',2,1400.00),
(8,8,'2024-01-28',1,800.00),
(9,9,'2024-01-30',2,1500.00),
(10,10,'2024-02-01',1,620.00);


INSERT INTO orders (book_id, cust_id, order_date, quntity, total_amount) VALUES
(2, 1, '2024-02-05', 1, 550.00),
(3, 5, '2024-02-07', 2, 600.00),
(5, 1, '2024-02-10', 1, 650.00),
(7, 3, '2024-02-12', 3, 2100.00),
(9, 1, '2024-02-15', 2, 1500.00);
SELECT * FROM book;
SELECT * FROM customer ;
SELECT * FROM orders;