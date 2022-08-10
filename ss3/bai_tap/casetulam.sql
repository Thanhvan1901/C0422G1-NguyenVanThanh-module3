use furama ;
-- 2 : 
SELECT 
    *
FROM
    nhan_vien
WHERE
    (nhan_vien.ho_va_ten REGEXP '^[HTK]')
        AND (CHAR_LENGTH(nhan_vien.ho_va_ten) <= 15);
-- 3 : 
select
 * 
 from 
 khach_hang 
 where 
 (khach_hang.dia_chi like '% Đà Nẵng'
 or 
 khach_hang.dia_chi like  '% Quảng Trị') and 
 ((year (now()) - year (ngay_sinh) BETWEEN 18 AND 50 ));
 
 -- 4 :
 select 
 ma_khach_hang , ho_ten , count(ho_ten) as 'so_lan_dat_phong'
 from 
 khach_hang
 
 
 
 
 