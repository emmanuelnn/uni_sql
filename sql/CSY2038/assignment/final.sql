

/* student names and id numbers

Group 9 


 20409927   Emmanuel Nwokoro	
 19420447   Adhum Miah
 20406857   Terence Gyimah Brempong	
 20412412   Romeo Ugochukwu	



*/




-- CSY2038_122@student/CSY2038_122


-- DROP TRIGGERS

DROP TRIGGER trig_age_ck


-- DROP FUNCTIONS AND PROCEDURES

DROP PROCEDURE proc_param_func_ct;
DROP FUNCTION func_param_ct;
DROP PROCEDURE proc_func;
DROP FUNCTION func_county_ct;

DROP PROCEDURE proc_username;
DROP PROCEDURE proc_param_username;

-- DROP FKs
ALTER TABLE programmes
DROP CONSTRAINTS fk_p_retreat_settings;

ALTER TABLE programmes
DROP CONSTRAINTS fk_p_guests;

ALTER TABLE retreat_settings
DROP CONSTRAINTS fk_rs_retreats;

ALTER TABLE retreat_settings
DROP CONSTRAINTS fk_rs_settings;



-- DROP PKs

ALTER TABLE retreats
DROP CONSTRAINTS pk_retreats;

ALTER TABLE settings
DROP CONSTRAINTS pk_settings;

ALTER TABLE guests
DROP CONSTRAINTS pk_guests;

ALTER TABLE retreat_settings
DROP CONSTRAINTS pk_retreat_settings;

ALTER TABLE programmes
DROP CONSTRAINTS pk_programs;


-- DROPS CHECKS

ALTER TABLE guests
DROP CONSTRAINT ck_guest_firstname;

ALTER TABLE guests
DROP CONSTRAINT ck_guest_surname;


-- DROP TABLE
DROP TABLE programmes;
DROP TABLE retreat_settings;
DROP TABLE guests;
DROP TABLE settings;
DROP TABLE addresses;
DROP TABLE retreats;

-- DROP TYPES
DROP TYPE accommodation_table_type;
DROP TYPE accommodation_type;
DROP TYPE social_media_varray_type;
DROP TYPE social_media_type;





--PKs

ALTER TABLE retreats
ADD CONSTRAINTS pk_retreats
PRIMARY KEY (retreat_id);

ALTER TABLE settings
ADD CONSTRAINTS pk_settings
PRIMARY KEY (setting_id);

ALTER TABLE guests
ADD CONSTRAINTS pk_guests
PRIMARY KEY (guest_id);

ALTER TABLE retreat_settings
ADD CONSTRAINTS pk_retreat_settings
PRIMARY KEY (retreat_setting_id);

ALTER TABLE programmes
ADD CONSTRAINTS pk_programs 
PRIMARY KEY (programme_id);

--FKs

ALTER TABLE retreat_settings
ADD CONSTRAINTS fk_rs_settings
FOREIGN KEY (setting_id)
REFERENCES settings(setting_id);

ALTER TABLE retreat_settings
ADD CONSTRAINTS fk_rs_retreats
FOREIGN KEY (retreat_id)
REFERENCES retreats(retreat_id);

ALTER TABLE programmes
ADD CONSTRAINTS fk_p_guests
FOREIGN KEY (guest_id)
REFERENCES guests(guest_id);

ALTER TABLE programmes
ADD CONSTRAINTS fk_p_retreat_settings
FOREIGN KEY (retreat_setting_id)
REFERENCES retreat_settings(retreat_setting_id);

--CHECKS

ALTER TABLE guests
ADD CONSTRAINT ck_guest_firstname
CHECK (guest_firstname = upper(guest_firstname));

ALTER TABLE guests
ADD CONSTRAINT ck_guest_surname
CHECK (guest_surname = upper(guest_surname));




 /*
 use SELECT TNAME FROM TAB; to see the tables
 
 use SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS; to see the CONSTRAINTS
  
 */
 
 
 
 
 
 --insert retreat data


/*
id number reminder
6 digits
reteats 10
settings 20
guest 30
retreat_settings 40
programmes 50
*/


INSERT INTO retreats (retreat_id, purpose)
VALUES (100002, 'REST AND RELAXATION');

INSERT INTO retreats (retreat_id, purpose)
VALUES (100003, 'RESEARCH');

INSERT INTO retreats (retreat_id, purpose)
VALUES (100004, 'EXERCISE');

INSERT INTO retreats (retreat_id, purpose)
VALUES (100005, 'CHALLENGING');

-- the no column method
INSERT INTO retreats VALUES (100006, 'ENERGISING');

INSERT INTO retreats VALUES (100007, 'EMOTIONAL HEALING');
-- inserting addresses 


-- 		address for the guest

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('85228 OLIVER TURNPIKE','STIRLING','SCOTLAND','FK8 3TX');

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('15 MELLING CLOSE','READING','WOKINGHAM','RG6 7XN');

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('43 ULVERSTON AVENUE','WARRINGTON','WARRINGTON','WA2 9JX');

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('1 HERMITAGE LANE','MAIDSTONE','KENT','ME16 9NZ');

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('20 ARLINGTON CLOSE','WORTHING','WEST SUSSEX','BN12 4ST');

INSERT INTO addresses (street, city, county, postcode)
VALUES  ('4 ABBOTS CLOSE','BRISTOL CITY,','BRISTOL','BS14 0UD');


-- insert setting data


INSERT INTO settings (setting_id, area, address) 
VALUES ( 200001, 'WINTER WONDERLAND', 
	address_type('HYDE PARK','LONDON','UK','W2 2UH'));


INSERT INTO settings (setting_id, area, address) 
VALUES( 200002, 'ART MUSEUM', 
	address_type('54 FESTIVE ROAD','NORTHAMPTON','UK','NN1 2SH'));


INSERT INTO settings (setting_id, area, address) 
VALUES( 200003, 'HAVEN LAKELAND', 
	address_type('MOOR LN','GRANGE-OVER-SANDS','FLOOKBURGH','LA11 7LT'));


INSERT INTO settings (setting_id, area, address) 
VALUES( 200004, 'LEE VALLEY CAMPSITE', 
	address_type('SEWARDSTONE ROAD','CHINGFORD','ESSEX','E4 7RA'));



INSERT INTO settings (setting_id, area, address) 
VALUES( 200005, 'REDPOINT CLIMBING CENTRE', 
	address_type('77 CECIL ST','BIRMINGHAM','UK','B19 3ST'));



INSERT INTO settings (setting_id, area, address) 
VALUES( 200006, 'DELTA FORCE PAINTBALL BANBURY', 
	address_type('HINTON AIRFIELD FARM','NORTHAMPTON','UK','NN13 5NS'));


-- insert guest data

INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300001,'EMMANUEL','NWOKORO','07452984752','31-DEC-2001',
social_media_varray_type(
	social_media_type('INSTAGRAM','EMMANUEL_N'),
	social_media_type('TWITTER','EMMANUEL_NW'),
	social_media_type('FACEBOOK','EMMANUEL_NWOKORO')),
REF(a)
FROM   addresses   a
WHERE street = '85228 OLIVER TURNPIKE';

INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300002,'KENECHI','SAM','07700900684','10-MAR-2002', 
social_media_varray_type(
	social_media_type('INSTAGRAM','KENECHI78'),
	social_media_type('TWITTER','KENECHIS'),
	social_media_type('FACEBOOK','KENECHISAM')),
REF(a)
FROM   addresses a
WHERE street = '15 MELLING CLOSE';



INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300003,'DEIMOS','RON','07700900696','17-MAR-2002', 
social_media_varray_type(
	social_media_type('INSTAGRAM','DEIMOSR'),
	social_media_type('TWITTER','DEIMOSRONNNN'),
	social_media_type('FACEBOOK','DEIMOSRON')),
REF(a)
FROM   addresses a
WHERE street = '43 ULVERSTON AVENUE';



INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300004,'NEASA','MILOJE','07700900443','02-AUG-1994', 
social_media_varray_type(
	social_media_type('INSTAGRAM','NEASAM'),
	social_media_type('TWITTER','NEASAMIL'),
	social_media_type('FACEBOOK','NEASAMILOJE')),
REF(a)
FROM   addresses a
WHERE street = '1 HERMITAGE LANE';


INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300005,'AUBREE','MIA','07700900299','18-JUN-1984', 
social_media_varray_type(
	social_media_type('INSTAGRAM','AUBREEM'),
	social_media_type('TWITTER','AUBREEMIAAAA'),
	social_media_type('FACEBOOK','AUBREEMIA')),
REF(a)
FROM   addresses a
WHERE street = '20 ARLINGTON CLOSE';



INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300006,'ARANZAZU','VALENTIN','07700900779','02-DEC-1998', 
social_media_varray_type(
	social_media_type('INSTAGRAM','ARANZAZUVA'),
	social_media_type('TWITTER','VAARANZAZU'),
	social_media_type('FACEBOOK','ARANZAZUVALENTIN')),
REF(a)
FROM   addresses a
WHERE street = '4 ABBOTS CLOSE';

-- inserting retreat_settings data


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400001, 200001, 100002, 
accommodation_table_type(
	accommodation_type('21','JOHN CLARE','9','200.50'),
	accommodation_type('30','PARK AVE','20','150.50')));


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400002, 200002, 100003, 
accommodation_table_type(
	accommodation_type('20','PREMIER INN','15','300.50'),
	accommodation_type('15','DELUXE','20','130.50')));


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400003, 200005, 100004, 
accommodation_table_type(
	accommodation_type('23566','SMALL','9','100.50'),
	accommodation_type('13566','LARGE','20','350.50')));


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400004, 200006, 100005, 
accommodation_table_type(
	accommodation_type('21333','RED ROOM','8','150.50'),
	accommodation_type('32000','BLUE ROOM','8','150.50')));


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400005, 200003, 100006, 
accommodation_table_type(
	accommodation_type('21221','SINGLE','1','100.50'),
	accommodation_type('30234','DOUBLE','3','300.50')));


INSERT INTO retreat_settings (retreat_setting_id, setting_id, retreat_id, accommodation)
VALUES (400006, 200004, 100007, 
accommodation_table_type(
	accommodation_type('211345','ALLSTAR','9','300.50'),
	accommodation_type('354330','STARTER TENTS','20','100.50')));


-- inserting programmes data

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500001,300001,400001,'1000.30','19-DEC-2020');

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500002,300002,400002,'900.30','09-NOV-2020');

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500003,300003,400003,'1500.22','26-FEB-2020');

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500004,300004,400004,'1500.50','28-NOV-2021');

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500005,300005,400005,'1000.50','18-JUN-2020');

INSERT INTO programmes (programme_id, guest_id, retreat_setting_id, cost, programme_date)
VALUES (500006,300006,400006,'500.30','30-OCT-2020');




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









SET SERVEROUTPUT ON 


--

SELECT 
CEIL(cost), 
FLOOR(cost), 
ROUND(cost,2), 
TRUNC(cost) 
FROM programmes;

--
SELECT 
MAX(CEIL(cost)),
MAX(FLOOR (cost)), 
MAX(ROUND (cost,2)), 
MAX(TRUNC (cost))
FROM programmes;

-- USERNAME, SHOWS FIRST TWO CHARACTERS FOR THE FIRST NAME AND FIRST FIVE LETTERS ON SURENAME TRY PUT THAT IN A PROCEDURE
SELECT CONCAT('Good morning ',CONCAT (SUBSTR(guest_firstname, 1,2),
  SUBSTR(guest_surname, 1,5)))
FROM guests;


-- USERNAME, SHOWS FIRST TWO CHARACTERS FOR THE FIRST NAME AND FIRST FIVE LETTERS ON SURENAME IN LOWER CASE
SELECT CONCAT('Hello ',CONCAT(SUBSTR(LOWER(guest_firstname), 1,2),
(SUBSTR(LOWER(guest_surname), 1,5))))
FROM guests;



-- CREATED a FUNCTION that count the county

CREATE OR REPLACE FUNCTION func_county_ct
RETURN NUMBER IS

      vn_county_ct   NUMBER(3);

BEGIN

     SELECT COUNT(*)
     INTO vn_county_ct 
     FROM addresses
     WHERE county = 'UK';

 RETURN vn_county_ct ;


END func_county_ct;
/
show errors



CREATE OR REPLACE PROCEDURE proc_func IS
	vn_no_of_countys NUMBER(3);
BEGIN
    vn_no_of_countys := func_county_ct;

    DBMS_OUTPUT.PUT_LINE('There are ' || vn_no_of_countys || ' setting(s) that has UK on it. please change it');

END proc_func;
/

    SELECT setting_ID, s.address.county
    FROM settings s;
	
SET SERVEROUTPUT ON 


exec proc_func;







-- PARAM ON FINDING THE DATE OF BIRTH ON WHO LIVE IN READING

CREATE OR REPLACE FUNCTION func_param_ct (in_date_of_birth guests.date_of_birth%Type)
RETURN NUMBER IS

      vn_city_ct   NUMBER(3);

BEGIN

     SELECT COUNT(*)
     INTO vn_city_ct 
     FROM guests g
	 WHERE g.address.city = 'READING'
	 AND
	 date_of_birth = in_date_of_birth;

 RETURN vn_city_ct ;


END func_param_ct ;
/

show errors

CREATE OR REPLACE PROCEDURE proc_param_func_ct (in_date_of_birth guests.date_of_birth%Type)IS
	vn_no_of_citys NUMBER(3);
BEGIN
    vn_no_of_citys := func_param_ct(in_date_of_birth);

    DBMS_OUTPUT.PUT_LINE('There are ' || vn_no_of_citys || ' guest(s) who live in READING');

END proc_param_func_ct;
/

--testing
    SELECT guest_ID, g.address.city
    FROM guests g
	WHERE g.address.city = 'READING';

exec proc_param_func_ct('10-MAR-2002');









-- TRIGGER to check if the guest is a minor or an adult
CREATE OR REPLACE TRIGGER trig_age_ck
BEFORE INSERT OR UPDATE OF date_of_birth ON guests 
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









