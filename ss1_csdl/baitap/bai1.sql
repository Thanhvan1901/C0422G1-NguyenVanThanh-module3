
create database ss1_baitap;
use ss1_baitap;

create table student(
id_student int auto_increment,
name_student varchar(55),
date_of_birth date,
-- Id tự tăng
primary key (id_student)
);
-- tạo 1 dòng trong bảng 
insert into student(name_student,date_of_birth) values ("thanh","1888-09-09"),
("vinh","2002-01-01");

select * from student ;

-- thêm trường "địa chỉ" vào bảng
alter table student add dia_chi text ;

-- Thêm thôg tin mới vào table có thêm địa chỉ
insert into student(name_student,date_of_birth,dia_chi) values("tuan","1997-01-30","Quang nam");
 
select *from student ;

-- thêm Đà Nẵng vào bản có tên thanh
update student set dia_chi	 = "Đà Nẵng"
where name_student = "thanh";

-- thêm huế vào bảng có tên vinh
update student set dia_chi	 = "Huế"
where name_student = "vinh";










