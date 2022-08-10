use quan_li_sinh_vien ;

SELECT 
    *
FROM
    student
WHERE
    student_name LIKE 'h%';

SELECT 
    *
FROM
    class c
WHERE
    MONTH(start_date) = 12;
SELECT 
    *
FROM
    subbject sub
WHERE
    creadit BETWEEN 3 AND 5;
UPDATE student 
SET 
    id_class = 2
WHERE
    student_name = 'hung';
SELECT 
    s.student_name, sub.sub_name, m.mark
FROM
    student s
        JOIN
    mark m ON s.id_student = m.id_student
        JOIN
    subbject sub ON m.id_sub = sub.id_sub
ORDER BY mark DESC , student_name;