
-- TEST THE TRIGGER ON HOW IT WILL SAY THAT THE GUEST IS A MINOR WHEN INSERTING DATA

-- bad example

INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300001,'DEIMOS','RON','07700900696','17-MAR-2022', 
social_media_varray_type(
	social_media_type('INSTAGRAM','DEIMOSR'),
	social_media_type('TWITTER','DEIMOSRONNNN'),
	social_media_type('FACEBOOK','DEIMOSRON')),
REF(a)
FROM   addresses a
WHERE street = '43 ULVERSTON AVENUE';

-- good example

INSERT INTO guests (guest_id, guest_firstname, guest_surname, phone_number, date_of_birth, social_media, address)
SELECT 300009,'DEIMOS','RON','07700900696','17-MAR-2022', 
social_media_varray_type(
	social_media_type('INSTAGRAM','DEIMOSR'),
	social_media_type('TWITTER','DEIMOSRONNNN'),
	social_media_type('FACEBOOK','DEIMOSRON')),
REF(a)
FROM   addresses a
WHERE street = '43 ULVERSTON AVENUE';

-- TEST THE QUERY TO SHOW IF IT SHOWS THE SETTING_ID AND RETREAT_ID ON THE PURPOSE OF REST AND RELAXATION

SELECT rs.setting_id, r.retreat_id, r.purpose
FROM retreat_settings rs, retreats r
WHERE purpose = 'REST AND RELAXATION';


-- test the QUERY to view which guest has a programme on 28th of november 2021 


SELECT g.guest_id, guest_firstname, guest_surname, p.programme_date
FROM guests  g
LEFT JOIN programmes  p
ON g.guest_id  =  p.guest_id
where p.programme_date = '28-NOV-2021';

-- test the nested QUERY to view which guest has a programme on 26th of february 2020 and only show their firstname and surname


SELECT guest_firstname, guest_surname
FROM guests
WHERE guest_id IN (
    SELECT guest_id
    FROM programmes
	WHERE programme_date= '26-FEB-2020');
