drop database if exists mohinhquanhe ;

create database mohinhquanhe ;

use mohinhquanhe ;

CREATE TABLE phieu_xuat (
    so_px INT AUTO_INCREMENT PRIMARY KEY,
    ngay_sx DATE
);

CREATE TABLE phieu_nhap (
    so_pn INT AUTO_INCREMENT PRIMARY KEY,
    ngay_nhap DATE
);

CREATE TABLE vat_tu (
    ma_vt INT AUTO_INCREMENT PRIMARY KEY,
    ten_vattu VARCHAR(45)
);

CREATE TABLE Chi_tiet_phieu_xuat (
    don_gia_xuat DOUBLE,
    so_luon_xuat INT,
    so_px INT,
    ma_vt INT,
    PRIMARY KEY (so_px , ma_vt),
    FOREIGN KEY (so_px)
        REFERENCES phieu_xuat (so_px),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt)
);

CREATE TABLE chi_tiet_phieu_nhap (
    don_gia_nhap DOUBLE,
    so_luong_nhap INT,
    ma_vt INT,
    so_pn INT,
    PRIMARY KEY (ma_vt , so_pn),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt),
    FOREIGN KEY (so_pn)
        REFERENCES phieu_nhap (so_pn)
);

CREATE TABLE don_dat_hang (
    so_dh INT AUTO_INCREMENT PRIMARY KEY,
    ngay_dh DATE
);

CREATE TABLE chi_tiet_don_hang (
    ma_vt INT,
    so_dh INT,
    PRIMARY KEY (ma_vt , so_dh),
    FOREIGN KEY (ma_vt)
        REFERENCES vat_tu (ma_vt),
    FOREIGN KEY (so_dh)
        REFERENCES don_dat_hang (so_dh)
);

CREATE TABLE phone (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE nha_cc (
    ma_ncc INT AUTO_INCREMENT PRIMARY KEY,
    ten_ncc VARCHAR(45) NOT NULL,
    dia_chi VARCHAR(45),
    id_phone INT,
    FOREIGN KEY (id_phone)
        REFERENCES phone (id)
);
CREATE TABLE cung_cap (
    ma_ncc INT,
    so_dh INT,
    PRIMARY KEY (ma_ncc , so_dh),
    FOREIGN KEY (ma_ncc)
        REFERENCES nha_cc (ma_ncc),
    FOREIGN KEY (so_dh)
        REFERENCES don_dat_hang (so_dh)
);