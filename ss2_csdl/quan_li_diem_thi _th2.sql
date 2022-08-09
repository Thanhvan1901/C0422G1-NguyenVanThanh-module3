drop database if exists quan_li_diem_thi ;
create database quan_li_diem_thi ;
use quan_li_diem_thi ;
CREATE TABLE hoc_sinh (
    ma_hs INT AUTO_INCREMENT PRIMARY KEY,
    ten_hs VARCHAR(45),
    ngay_sinh DATE,
    lop VARCHAR(45),
    gt VARCHAR(45)
);

create table mon_hoc (
ma_mh int auto_increment primary key ,
ten_mh varchar (45)
);

create table bang_diem(
ma_hs int ,
ma_mh int,
diem_thi double ,
ngay_kt date ,
foreign key (ma_hs) REFERENCES hoc_sinh (ma_hs) ,
foreign key (ma_mh) references mon_hoc (ma_mh)
);

create table giao_vien(
ma_gv int auto_increment primary key ,
ten_gv varchar (45),
SDT varchar (20)
);

alter table mon_hoc add ma_gv int ;
alter table mon_hoc add constraint PK_maGV foreign key (ma_gv) references giao_vien(ma_gv);