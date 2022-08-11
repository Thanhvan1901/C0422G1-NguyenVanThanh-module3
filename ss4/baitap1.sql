use quan_li_sinh_vien ;
-- 1
SELECT 
    id_sub, sub_name, status, MAX(creadit)
FROM
    subbject;
    -- 2
SELECT 
    id_sub, sub_name, MAX(mark), status
FROM
    subbject sub
        JOIN
    mark ON sub.id_sub = mark.id_sub;
    -- 3
SELECT 
    s.id_student,
    s.student_name,
    AVG(m.mark) diem_trung_binh
FROM
    student s
	JOIN
    mark m ON s.id_student = m.id_student
GROUP BY s.student_name
ORDER BY diem_trung_binh;