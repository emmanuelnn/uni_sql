

CREATE OR REPLACE TRIGGER trig_dob_ck
BEFORE INSERT OR UPDATE OF date_of_birth ON students 
FOR EACH ROW 
WHEN (NEW.date_of_birth > SYSDATE) 



BEGIN 

RAISE_APPLICATION_ERROR(-20000, 'ERROR - THIS STUDENT WAS BORN AFTER TODAY, AMEND STUDENT DATE OF BIRTH!');



END trig_dob_ck;
/




--

CREATE OR REPLACE TRIGGER trig_age_ck
BEFORE INSERT OR UPDATE OF date_of_birth ON students 
FOR EACH ROW 
WHEN(NEW.date_of_birth IS NOT NULL)



DECLARE
vn_age NUMBER(5,2);


BEGIN 
vn_age:= MONTHS_BETWEEN(SYSDATE, :NEW.date_of_birth)/12;

IF vn_age < 18
	THEN DBMS_OUTPUT.PUT_LINE('THIS IS A MINOR '||vn_age);
	ELSE DBMS_OUTPUT.PUT_LINE('APPLICANT IS AN ADULT'||vn_age);
END IF;


END trig_age_ck;
/

SHOW ERRORS






