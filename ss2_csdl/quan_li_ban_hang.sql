drop database if exists quan_li_ban_hang ;
create database quan_li_ban_hang;
use quan_li_ban_hang;

CREATE TABLE customer (
    c_ID INT PRIMARY KEY,
    c_name VARCHAR(45),
    C_age INT
);

CREATE TABLE orders (
    o_ID INT PRIMARY KEY,
    o_date DATETIME,
    o_total_price VARCHAR(20),
    C_id INT,
    FOREIGN KEY (c_id)
        REFERENCES customer (c_ID)
);

CREATE TABLE order_detail (
    o_id INT,
    p_id INT PRIMARY KEY,
    od_qty VARCHAR(45),
    FOREIGN KEY (o_id)
        REFERENCES orders (o_ID)
);

CREATE TABLE product (
    p_id INT,
    p_name VARCHAR(45),
    p_price VARCHAR(45),
    FOREIGN KEY (p_id)
        REFERENCES order_detail (p_id)
);