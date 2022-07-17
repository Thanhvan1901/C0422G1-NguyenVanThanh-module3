drop database if exists quan_li_ban_hang ;
create database quan_li_ban_hang;
use quan_li_ban_hang;

CREATE TABLE Customer (
    c_Id INT AUTO_INCREMENT PRIMARY KEY,
    c_Name VARCHAR(45) NOT NULL,
    age INT NOT NULL,
    CHECK (age > 0)
);

CREATE TABLE `Order` (
    o_Id INT AUTO_INCREMENT PRIMARY KEY,
    c_Id INT,
    o_Date DATE NOT NULL,
    o_Totalprice DOUBLE,
    FOREIGN KEY (c_Id)
        REFERENCES Customer (c_Id)
);

CREATE TABLE Product (
    p_Id INT AUTO_INCREMENT PRIMARY KEY,
    p_Name VARCHAR(45) NOT NULL,
    p_Price DOUBLE
);

CREATE TABLE OrderDetail (
    o_Id INT,
    p_Id INT,
    PRIMARY KEY (o_Id , p_Id),
    o_dQTY VARCHAR(50),
    FOREIGN KEY (o_Id)
        REFERENCES `order` (o_Id),
    FOREIGN KEY (p_Id)
        REFERENCES product (p_Id)
);
INSERT INTO customer(c_Name, age)
VALUES("Minh Quan",10),
	  ("Ngoc Oanh",20),
	  ("Hong Ha",50);
      
INSERT INTO `order`(c_Id, o_Date, o_Totalprice)
VALUES(1, '2006-03-21', NULL),
	  (2,'2006-3-23',NULL),
	  (1,'2006-3-16',NULL);
      
INSERT INTO product(p_Name, p_Price)
VALUES('May Giat', 3),
	  ('Tu Lanh', 5),
	  ('Dieu Hoa', 7),
	  ('Quat', 1),
	  ('Bep Dien', 2);
      
INSERT INTO orderdetail(o_Id, p_Id, o_dQTY)
VALUES(1, 1, 3),
	  (1, 3, 7),
      (1, 4, 2),
      (2, 1, 1),
      (3, 1, 8),
	  (2, 5, 4),
      (2, 3, 3);
      
	SELECT 
    o.o_Id AS order_id,
    o.o_Date AS order_date,
    p.p_Price AS product_price
FROM
    `order` o
        INNER JOIN
    product p ON o.o_Id = p.p_Id;
    
    SELECT 
    c.c_Name AS customer_name, p.p_Name AS product_name, ord.o_dQTY as so_luong
FROM
    customer c
        JOIN
    `order` o ON c.c_Id = o.c_Id
        JOIN
    orderdetail ord ON o.o_Id = ord.o_Id
        JOIN
    product p ON ord.p_Id = p.p_Id;
    
    
SELECT 
    c.c_Name AS customer_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.c_Id = o.c_Id
WHERE
    o.c_Id IS NULL;   
    SELECT 
    o.o_Id AS order_id,
    o.o_Date AS order_date,
    ord.o_dQTY * p.p_Price AS total_price
FROM
    customer c
        JOIN
    `order` o ON c.c_Id = o.c_Id
        JOIN
    orderdetail ord ON o.o_Id = ord.o_Id
        JOIN
    product p ON ord.p_Id = p.p_Id
WHERE
    ord.o_dQTY * p.p_Price IS NOT NULL;




