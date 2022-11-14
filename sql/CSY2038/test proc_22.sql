



--Query the contents of the students table, 

CREATE OR REPLACE PROCEDURE proc_username IS
	vc_username  VARCHAR2(30);
	vc_firstname students.student_firstname%TYPE;
	vc_surname   students.student_surname%TYPE;
BEGIN
    SELECT student_firstname, student_surname 
    INTO vc_firstname, vc_surname
    FROM students
	WHERE student_id = 6901;

	vc_username := SUBSTR(vc_firstname, 1, 2)|| SUBSTR(vc_surname, 1, 5);
	DBMS_OUTPUT.PUT_LINE('The username is '||vc_username);

END proc_username;
/
show errors

exec proc_username;