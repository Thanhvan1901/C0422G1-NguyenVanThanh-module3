USE quan_li_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

SELECT sub_name, MAX(creadit) as max
FROM subbject
GROUP BY sub_name 
order by max desc
;
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT sub_name, MAX(creadit) as max
FROM subbject
GROUP BY sub_name ;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

SELECT 
    S.id_student, S.student_name, AVG(mark) AS avg
FROM
    student S
        JOIN
    mark M ON S.id_student = M.id_student
GROUP BY S.id_student , S.student_name
ORDER BY avg DESC;