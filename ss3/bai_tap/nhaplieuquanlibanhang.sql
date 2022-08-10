use quanlibanhang ;
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
      
      