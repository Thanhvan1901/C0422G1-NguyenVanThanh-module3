drop database if exists quan_li_sinh_vien;
create database quan_li_sinh_vien;
use quan_li_sinh_vien;

CREATE TABLE class (
    id_class INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    class_name VARCHAR(60),
    start_date DATETIME,
    status BIT
);

CREATE TABLE student (
    id_student INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    student_name VARCHAR(30),
    addres VARCHAR(50),
    phone VARCHAR(20),
    status BIT,
    id_class INT NOT NULL,
    FOREIGN KEY (id_class)
        REFERENCES class (id_class)
);

CREATE TABLE subbject (
    id_sub INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    sub_name VARCHAR(30) NOT NULL,
    creadit TINYINT NOT NULL DEFAULT 1 CHECK (creadit >= 1),
    status BIT DEFAULT 1
);

CREATE TABLE mark (
    id_mark INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_sub INT NOT NULL,
    id_student INT NOT NULL,
    mark FLOAT DEFAULT 0 CHECK (mark BETWEEN 0 AND 100),
    examtimes TINYINT DEFAULT 1,
    FOREIGN KEY (id_sub)
        REFERENCES subbject (id_sub),
    FOREIGN KEY (id_student)
        REFERENCES student (id_student)
);

insert into class(class_name , start_date,status) values ('A1','2008/12/20',1),
('A2','2008/12/22',1),
('B3',current_date ,0);

INSERT INTO Student (student_name, addres, phone, Status, id_class)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (student_name, addres, Status, id_class)
VALUES ('Hoa', 'Hai phong', 1, 1);
INSERT INTO Student (student_name, addres, phone, Status, id_class)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subbject
VALUES (1, 'CF', 5, 1),
       (2, 'C', 6, 1),
       (3, 'HDJ', 5, 1),
       (4, 'RDBMS', 10, 1);
       
       INSERT INTO mark (id_sub, id_student, mark, examtimes)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);

SELECT 
    *
FROM
    student
WHERE
    student_name LIKE 'h%';
SELECT 
    *
FROM
    class
WHERE
    MONTH(start_date) = 12;
SELECT 
    *
FROM
    subbject
WHERE
    creadit BETWEEN 3 AND 5;
UPDATE student 
SET 
    id_class = 2
WHERE
    student_name = 'Hung';
SELECT 
    s.student_name, sub.sub_name, m.mark
FROM
    student S
        JOIN
    mark M ON S.id_student = M.id_student
        JOIN
    subbject Sub ON M.id_sub = Sub.id_sub
ORDER BY Mark DESC , student_name ASC; 
    
    


