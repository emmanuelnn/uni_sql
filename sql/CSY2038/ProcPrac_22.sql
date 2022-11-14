

SET SERVEROUTPUT ON 

DESC students;

SELECT * FROM students;

 SELECT student_firstname, student_surname
 FROM students
	WHERE student_id = 6901;
    
--CREATING PROCEDURES IN SQL*PLUS
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

--


INSERT INTO companies VALUES (80, 'DISNEY', 'PARIS', 'ARTS', 2600, 10000000, 300000.00);



CREATE OR REPLACE PROCEDURE proc_delete_company IS
   vn_company_id companies.company_id%TYPE;
BEGIN
   SELECT max (company_id)
   INTO vn_company_id
   FROM companies;

   DELETE FROM companies
   WHERE company_id = vn_company_id;

END proc_delete_company;
/

exec proc_delete_company;


-- USING PARAMETERS IN PROCEDURES

CREATE OR REPLACE PROCEDURE proc_param_username (in_student_id students.student_id%Type) IS
	vc_username  VARCHAR2(30);
	vc_firstname students.student_firstname%TYPE;
	vc_surname   students.student_surname%TYPE;
BEGIN
    SELECT student_firstname, student_surname 
    INTO vc_firstname, vc_surname
    FROM students
	WHERE student_id = in_student_id;

	vc_username := SUBSTR(vc_firstname, 1, 2)|| SUBSTR(vc_surname, 1, 5);
	DBMS_OUTPUT.PUT_LINE('The username is '||vc_username);

END proc_param_username;
/
show errors

exec proc_param_username(6901);












