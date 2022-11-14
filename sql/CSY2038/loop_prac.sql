

SET SERVEROUTPUT ON 



--LOOPS



DECLARE 

vn_counter NUMBER(3):=1;
vc_firstname VARCHAR2(30):='EMMANUEL';
vc_surname VARCHAR2(30):='NWOKORO';
vn_length NUMBER(3):= LENGTH(vc_firstname);

BEGIN 

LOOP
EXIT WHEN vn_counter >vn_length;
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));

vn_counter := vn_counter +1;

	END LOOP;
		DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_surname, 0));
END;

/


--changing the vn_counter to 0 which only shows the surname
DECLARE 

vn_counter NUMBER(3):=1;
vc_firstname VARCHAR2(30):='EMMANUEL';
vc_surname VARCHAR2(30):='NWOKORO';
vn_length NUMBER(3):= LENGTH(vc_firstname);

BEGIN 

LOOP
EXIT WHEN vn_counter >vn_length;
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 0));

vn_counter := vn_counter +1;

	END LOOP;
		DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_surname, 0));
END;

/
-- done

--WHILE LOOPS

DECLARE 

vn_counter NUMBER(3):=1;
vc_firstname VARCHAR2(30):='EMMANUEL';
vc_surname VARCHAR2(30):='NWOKORO';
vn_length NUMBER(3):= LENGTH(vc_firstname);

BEGIN 

WHILE  vn_length >= vn_counter LOOP
DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));

vn_counter := vn_counter +1;

	END LOOP;
		DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_surname, 0));
END;

/


--FOR LOOPS

DECLARE 

vn_counter NUMBER(3):=1;
vc_firstname VARCHAR2(30):='EMMANUEL';
vc_surname VARCHAR2(30):='NWOKORO';
vn_length NUMBER(3):= LENGTH(vc_firstname);

BEGIN 

FOR vn_counter IN 1 .. vn_length LOOP

DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_firstname, vn_counter, 1));

	END LOOP;
		DBMS_OUTPUT.PUT_LINE(SUBSTR(vc_surname, 0));
END;

/





