drop database if exists ss1_baitap;
create database ss1_baitap;
use ss1_baitap;

CREATE TABLE class (
    id_student INT AUTO_INCREMENT,
    name_student VARCHAR(55),
    PRIMARY KEY (id_student)
);
insert into class(name_student) values("Thanh"),("Vinh");
SELECT 
    *
FROM
    class;
-- id, name, age, country
CREATE TABLE teacher (
    id_teacher INT AUTO_INCREMENT,
    name_teacher VARCHAR(55),
    age INT,
    country VARCHAR(55),
    PRIMARY KEY (id_teacher)
); 
insert into teacteacherher(name_teacher,age,country) values ("Nhân","45","Đà Nẵng"),
("Hoàng","40","Huế");
select * from teacher;









