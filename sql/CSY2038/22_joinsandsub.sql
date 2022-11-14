

-- INNER JOINS AND OUTER 

SELECT sa.subject_id, subject_name, c.subject_id, title
FROM subject_areas sa
JOIN courses c
ON sa.subject_id  =  c.subject_id;

SELECT sa.subject_id, subject_name, c.subject_id, title
FROM subject_areas sa, courses c;


SELECT c.course_id, c.title, i.instructor_name
FROM courses c JOIN offerings o
ON c.course_id = o.course_id
JOIN instructors i
ON i.instructor_id = o.instructor_id; 

SELECT c.course_id, c.title, i.instructor_name, offering_id
FROM courses c JOIN offerings o
ON c.course_id = o.course_id
JOIN instructors i
ON i.instructor_id = o.instructor_id;


COLUMN cost FORMAT A10;
COLUMN title FORMAT A15;


SELECT s.student_id, student_firstname, student_surname, a.evaluation
FROM students  s
LEFT JOIN attendance  a
ON s.student_id  =  a.student_id;


SELECT c.course_id, title, offering_id, i.instructor_id, instructor_name
FROM courses c JOIN offerings o
ON c.course_id = o.course_id
JOIN instructors i
ON i.instructor_id = o.instructor_id;




