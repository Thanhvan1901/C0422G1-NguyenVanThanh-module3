drop database if exists quanlibanhang ;
create database quanlibanhang ;
use quanlibanhang ;
CREATE TABLE customer (
    c_id INT AUTO_INCREMENT PRIMARY KEY,
    c_name VARCHAR(45),
    c_age INT
);
CREATE TABLE `order` (
    o_id INT AUTO_INCREMENT PRIMARY KEY,
    o_date DATE,
    o_totalPrice DOUBLE,
    c_id INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_id)
);
 
CREATE TABLE product (
    p_id INT AUTO_INCREMENT PRIMARY KEY,
    p_name VARCHAR(45),
    p_price DOUBLE
);
 
CREATE TABLE `orderdetail` (
    od_QTY VARCHAR(45),
    o_id INT,
    p_id INT,
    PRIMARY KEY (o_id , p_id),
    FOREIGN KEY (o_id)
        REFERENCES `order` (o_id),
    FOREIGN KEY (p_id)
        REFERENCES product (p_id)
);