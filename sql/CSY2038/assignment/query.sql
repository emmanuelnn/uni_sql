
-- QUERY

-- BASIC QUERY

SELECT guest_id, guest_firstname, guest_surname
FROM guests g;

SELECT guest_id, guest_firstname, guest_surname
FROM guests g
WHERE guest_firstname = 'NEASA'; --WHERE clause

-- QUERYING OBJECT TABLES 'standard syntax'

SELECT street, city 
FROM addresses;

SELECT street, city, postcode 
FROM addresses;

-- QUERYING OBJECT COLUMNS 'standard syntax'

SELECT social_media 
FROM guests;

SELECT accommodation 
FROM retreat_settings;


-- QUERY FOR REFERENCE

SELECT REF(a) , street, city, county
FROM addresses  a
WHERE street = '15 MELLING CLOSE';

SELECT REF(a) , street, city, county
FROM addresses  a
WHERE street = 'SEWARDSTONE ROAD';



-- QUERYING USING DOT NOTATION 


SELECT s.address.street,s.address.city 
FROM settings s;

SELECT g.address.street,g.address.city,g.address.county
FROM guests g;


-- QUERYING TABLES WITH REF COLUMNS 'standard syntax' shows OID

SELECT setting_id, address
FROM settings;



-- QUERYING USING DEREF shows all the details

SELECT guest_id, DEREF(address) 
FROM guests;


-- QUERY USING DOT NOTATION

SELECT g.address.street, g.address.city, g.address.county, g.address.postcode
FROM guests g;


-- QUERYING WITH A VARRAY 'standard syntax'

SELECT social_media FROM guests;


SELECT g.guest_id, s.username
FROM guests g,   
TABLE(g.social_media) s
WHERE guest_id =300001;

-- QUERYING A TABLE WITH A NEST 'standard syntax'


SELECT accommodation FROM retreat_settings;


SELECT rs.retreat_setting_id, ac.price
FROM retreat_settings rs, TABLE(rs.accommodation) ac
WHERE ac.room_name = 'DELUXE';

-- QUERYING NESTED TABLE ONLY

SELECT VALUE(ac)
FROM THE(
SELECT accommodation 
FROM retreat_settings
WHERE retreat_setting_id = 400002) ac;


-- qerying using Cartesian Example
-- 	shows the guest fullname with the cost and date of the programme

SELECT g.guest_id, g.guest_firstname, g.guest_surname, programme_id, p.cost, p.programme_date
FROM guests g, programmes p;

SELECT rs.setting_id, r.retreat_id, r.purpose
FROM retreat_settings rs, retreats r;


-- COMPOUND INNER JOIN

-- 		SHOWS THE GUEST PHONE_NUMBER TO TEXT THEM THE COST

SELECT cost, phone_number 
FROM retreat_settings 
JOIN programmes
	ON retreat_settings.retreat_setting_id = programmes.retreat_setting_id
JOIN  guests
	ON guests.guest_id = programmes.guest_id;


-- OUTER JOINS
SELECT g.guest_id, guest_firstname, guest_surname, p.programme_date
FROM guests  g
LEFT JOIN programmes  p
ON g.guest_id  =  p.guest_id;

-- FULL OUTER JOIN

SELECT 
    s.area,
	rs.retreat_id,
	rs.accommodation
FROM 
    settings s
FULL OUTER JOIN retreat_settings rs 
ON rs.setting_id = s.setting_id;



-- NESTED QUERIES



SELECT guest_firstname, guest_surname
FROM guests
WHERE guest_id IN (
    SELECT guest_id
    FROM programmes);
  

	
	
	








