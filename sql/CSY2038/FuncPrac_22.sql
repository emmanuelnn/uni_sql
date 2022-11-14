SET SERVEROUTPUT ON 

--CREATING FUNCTIONS IN SQL*PLUS

CREATE OR REPLACE FUNCTION func_voucher_ct
RETURN NUMBER IS

      vn_voucher_ct   NUMBER(3);

BEGIN

     SELECT COUNT(*)
     INTO vn_voucher_ct 
     FROM students
     WHERE voucher = 'Y';

 RETURN vn_voucher_ct ;


END func_voucher_ct;
/
show errors



CREATE OR REPLACE PROCEDURE proc_using_func IS
	vn_no_of_vouchers NUMBER(3);
BEGIN
    vn_no_of_vouchers := func_voucher_ct;

    DBMS_OUTPUT.PUT_LINE('There are ' || vn_no_of_vouchers || ' student(s) who have vouchers.');

END proc_using_func;
/

    SELECT STUDENT_ID, VOUCHER
    FROM students;

exec proc_using_func;

-- parm

CREATE OR REPLACE FUNCTION func_param_ct (in_date_of_birth students.date_of_birth%Type)
RETURN NUMBER IS

      vn_voucher_ct   NUMBER(3);

BEGIN

     SELECT COUNT(*)
     INTO vn_voucher_ct 
     FROM students
     WHERE voucher = 'Y'
	 AND
	 date_of_birth > in_date_of_birth;

 RETURN vn_voucher_ct ;


END func_param_ct ;
/

show errors

CREATE OR REPLACE PROCEDURE proc_param_using_func (in_date_of_birth students.date_of_birth%Type)IS
	vn_no_of_vouchers NUMBER(3);
BEGIN
    vn_no_of_vouchers := func_param_ct(in_date_of_birth);

    DBMS_OUTPUT.PUT_LINE('There are ' || vn_no_of_vouchers || ' student(s) who have vouchers.');

END proc_param_using_func;
/

--testing
    SELECT student_id, voucher, date_of_birth
    FROM students;

exec proc_param_using_func('04-JUL-04');

















