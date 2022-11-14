
-- FUNCTION

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

    SELECT guest_ID, g.address.county
    FROM guests g;
	
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







