drop database if exists quan_li_vat_tu;
create database quan_li_vat_tu;
use quan_li_vat_tu ;

CREATE TABLE phieu_xuat (
    so_PX INT PRIMARY KEY,
    ngay_xuat DATE
);

CREATE TABLE vat_tu (
    ma_vt VARCHAR(25) PRIMARY KEY,
    ten_vt VARCHAR(45)
);
CREATE TABLE phieu_nhap (
    so_pn INT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE chi_tiet_phieu_xuat (
    don_gia_xuat DOUBLE,
    so_luong_xuat INT,
    so_px INT,
    ma_vt VARCHAR(25),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    so_pn INT,
    ma_vt VARCHAR(25),
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

create table nha_cc(
ma_ncc varchar (20) primary key ,
ten_ncc varchar (45) ,
dia_chi varchar (45)
);

create table so_dien_thoai(
so_dien_thoai varchar(10),
ma_ncc varchar(20),
foreign key (ma_ncc) references nha_cc(ma_ncc)
);


CREATE TABLE don_hang (
    so_dh INT PRIMARY KEY,
    ngay_dh DATE,
    ma_ncc varchar(20),
    foreign key (ma_ncc) references nha_cc(ma_ncc)
);
CREATE TABLE chi_tiet_don_hang (
    ma_vt VARCHAR(25),
    so_dh INT,
    PRIMARY KEY (so_don_hang , ma_vat_tu),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt),
    FOREIGN KEY (so_dh)
        REFERENCES don_hang (so_dh)
);
 
 

