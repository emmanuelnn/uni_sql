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
VALUES  ('85228 OLIVER TURNPIKE','STIRLING','UK','FK8 3TX');

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



