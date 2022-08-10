use quanlibanhang ;
INSERT INTO customer(cName, cAge)
VALUES("Minh Quan",10),
	  ("Ngoc Oanh",20),
	  ("Hong Ha",50);
      
INSERT INTO `order`(cId, oDate, oTotalprice)
VALUES(1, '2006-03-21', NULL),
	  (2,'2006-3-23',NULL),
	  (1,'2006-3-16',NULL);
      
INSERT INTO product(pName, pPrice)
VALUES('May Giat', 3),
	  ('Tu Lanh', 5),
	  ('Dieu Hoa', 7),
	  ('Quat', 1),
	  ('Bep Dien', 2);
      
INSERT INTO `orderdetail`(oId, pId, odQTY)
VALUES(1, 1, 3),
	  (1, 3, 7),
      (1, 4, 2),
      (2, 1, 1),
      (3, 1, 8),
	  (2, 5, 4),
      (2, 3, 3);
      SELECT 
    o.oId AS orderId,
    o.oDate AS orderDate,
    p.pPrice AS productPrice
FROM
    `order` o
        INNER JOIN
    product p ON o.oId = p.pId;
    
    SELECT 
    c.cName AS customerName, p.pName AS productName, ord.odQTY as soLuong
FROM
    customer c
        JOIN
    `order` o ON c.cId = o.cId
        JOIN
    orderdetail ord ON o.oId = ord.oId
        JOIN
    product p ON ord.pId = p.pId;
    
    
SELECT 
    c.cName AS customerName
FROM
    customer c
        LEFT JOIN
    `order` o ON c.cId = o.cId
WHERE
    o.cId IS NULL;   
    SELECT 
    o.oId AS orderId,
    o.oDate AS orderDate,
    ord.odQTY * p.pPrice AS totalPrice
FROM
    customer c
        JOIN
    `order` o ON c.cId = o.cId
        JOIN
    orderdetail ord ON o.oId = ord.oId
        JOIN
    product p ON ord.pId = p.pId
WHERE
    ord.odQTY * p.pPrice IS NOT NULL;
      