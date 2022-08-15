-- 1 
drop database if exists demo ;
create database demo ; 
use  demo ;
-- 2 
CREATE TABLE Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productCode VARCHAR(45),
    productName VARCHAR(45),
    productPrice DOUBLE,
    productAmount VARCHAR(45),
    productDescription VARCHAR(45),
    productStatus VARCHAR(45)
);

INSERT INTO `demo`.`products` (`id`, `productCode`, `productName`, `productPrice`, `productAmount`, `productDescription`, `productStatus`)
 VALUES 
 ('1', 'Del ', 'Dell Inspiron ', 18, '5', 'Đen', 'Còn Hàng'),
 ('2', 'Apple ', 'Macbook air', 40 , '3', 'Gold', 'Còn Hàng '),
 ('3', 'Asus', 'Asus X415EA', 18, '4', 'Xám', 'Còn Hàng '),
 ('4', 'HP', 'HP 14s dq2545TU ', 15, '', 'Silver', 'Hết Hàng');

-- 3
 create unique index  i_producsCode on Products (productCode)  ;
 create index i_productNamePrice  on Products (productName,productPrice)  ;
 EXPLAIN SELECT * FROM products WHERE productName = 'Dell Inspiron ';
 EXPLAIN SELECT * FROM products WHERE productCode = 3;
 -- 4
 -- Tạo View
CREATE VIEW product AS
    SELECT 
        Products.productCode,
        Products.productName,
        Products.productPrice,
        Products.productStatus
    FROM
        Products;
-- sửa View
UPDATE product 
SET 
    productStatus = 'Còn Hàng '
WHERE
    productCode = 'HP' ;
    -- xóa view 
delete from product  where  productCode = 'HP' ;
-- 5
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
Delimiter $$
create  procedure sp_products ()
begin 
select * from Products ;
end $$
Delimiter ;
call sp_products ;

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER //
CREATE PROCEDURE add_procedure(IN id INT, IN product_code INT, IN product_name VARCHAR(20), IN product_price INT, IN product_amount INT, IN product_description varchar(50), IN product_status INT)
begin
INSERT INTO products()
VALUES (id, productCode, productName, productPrice, productAmount, productDescription, productStatus);
END //
DELIMITER ;

CALL add_procedure(4, 'MSI', 'Laptop MSI Modern 14 B5M 202VN', 13, 5,'Đen', 'Còn Hàng ');

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER //
CREATE PROCEDURE updateProcedure(IN pPrice INT, IN i INT)
begin
UPDATE products SET productPrice = pPrice WHERE id = i;
END //
DELIMITER ;

CALL update_procedure(15, 4);

-- Tạo store procedure xoá sản phẩm theo id
DELIMITER //
CREATE PROCEDURE delete_procedure(IN i INT)
begin
DELETE FROM products WHERE id = i;
END //
DELIMITER ;

CALL delete_procedure(4);


        
  






