
DESC students;

SELECT * FROM students;



CREATE OR REPLACE PROCEDURE proc_username IS
	vc_username  VARCHAR2(30);
	vc_firstname students.student_firstname%TYPE;
	vc_surname   students.student_surname%TYPE;
BEGIN
    SELECT student_firstname, student_surname
    INTO vc_firstname, vc_surname
    FROM students;

END proc_username;
/
show errors







