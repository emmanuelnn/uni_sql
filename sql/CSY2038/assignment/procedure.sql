

-- PROCEDURE


SET SERVEROUTPUT ON 

-- PROCEDURE on the username

CREATE OR REPLACE PROCEDURE proc_username IS
	vc_username  VARCHAR2(30);
	vc_firstname guests.guest_firstname%TYPE;
	vc_surname   guests.guest_surname%TYPE;
BEGIN
    SELECT guest_firstname, guest_surname 
    INTO vc_firstname, vc_surname
    FROM guests
	WHERE guest_id = 300002;

-- FIRST TWO CHARACTERS AND THE FIRST THREE CHARACTERS
	vc_username := SUBSTR(vc_firstname, 1, 2)|| SUBSTR(vc_surname, 1, 3);
	DBMS_OUTPUT.PUT_LINE('The username is '||vc_username);

END proc_username;
/
show errors

exec proc_username;



-- PARAM PROCEDURE SERACHING GUEST_ID ON THE EXEC FOR THEIR USERNAME

CREATE OR REPLACE PROCEDURE proc_param_username (in_guest_id guests.guest_id%Type) IS
	vc_username  VARCHAR2(30);
	vc_firstname guests.guest_firstname%TYPE;
	vc_surname   guests.guest_surname%TYPE;
BEGIN
    SELECT guest_firstname, guest_surname 
    INTO vc_firstname, vc_surname
    FROM guests
	WHERE guest_id = in_guest_id;

	vc_username := SUBSTR(vc_firstname, 1, 2)|| SUBSTR(vc_surname, 1, 3);
	DBMS_OUTPUT.PUT_LINE('The username is '||vc_username);

END proc_param_username;
/
show errors

exec proc_param_username(300001);















