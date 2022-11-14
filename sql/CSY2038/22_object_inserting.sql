


INSERT INTO bill_addresses (street, city, country)
VALUES  ('54 FESTIVE ROAD','NORTHAMPTON','UK');

INSERT INTO bill_addresses (street, city, country)
VALUES  ('30 ENGLISH STREET','BEDFORD','UK');


INSERT INTO customers (customer_id, customer_name, invoice_address)
SELECT 1, 'MANDY MORRELL' , REF(ba)
FROM bill_addresses   ba 
WHERE street = '54 FESTIVE ROAD';


INSERT INTO states (state, country)
VALUES  ('BIHAR','INDIA');



UPDATE sites  sr
SET sr.state_ref =(
	SELECT REF(s)
	FROM  states  s
	WHERE s.state = 'BIHAR')
WHERE sr.site_id = 1;


SELECT * FROM sites WHERE site_id = 1;



DROP TABLE customers;

CREATE TABLE customers(
customer_id NUMBER(6),
customer_name VARCHAR2(25),
invoice_address invoice_address_type);

DESC customers;

INSERT INTO customers
VALUES (2, ‘CAROLE MORRELL’, invoice_address_type('1 MY WAY','LUTON','UK'));

INSERT INTO states
VALUES  ('ALBERTA','CANADA');

INSERT INTO states
VALUES  ('VICTORIA','AUSTRALIA');

INSERT INTO states
VALUES  ('QUEENSLAND','AUSTRALIA');

INSERT INTO states
VALUES  ('DELHI','INDIA');



INSERT INTO sites (site_id, address, state_ref)
SELECT 10, address_type('UNIVERSITY DRIVE', 'NORTHAMPTON', 'UK'), REF(sr)
FROM   states       sr
WHERE state = 'QUEENSLAND';

SELECT * FROM sites WHERE site_id = 10;


DESC prospective_customers;
DESC social_media_varray_type;
DESC social_media_type;



INSERT into  prospective_customers (prospective_customer_id, company_name, contact_name, social_media_available)
VALUES (80000, 'DATABASE', 'EMMANUEL',
social_media_varray_type(
	social_media_type('TWITTER','KENECH88'),
	social_media_type('INSTAGRAM','EMMANUEL123'),
	social_media_type('FACEBOOK','NWOEMAN'))
 );

INSERT into  prospective_customers (prospective_customer_id, company_name, contact_name, social_media_available)
VALUES (80001, 'WEB', 'TOM',
social_media_varray_type(
	social_media_type('TWITTER','TOMB'),
	social_media_type('INSTAGRAM','BTOM'),
	social_media_type('FACEBOOK','DRTOM'))
);


INSERT into adverts (advert_id, advert_title, description, social_media_used)
VALUES (90000, 'UON UNION','GET UNI STUDENT INVOLVED',
social_media_table_type (
	social_media_type('TWITTER','UONUNION'),
	social_media_type('INSTAGRAM','UONORTHAMPTONUNION'),
	social_media_type('FACEBOOK','NORTHAMPTONUNION'))
);

INSERT INTO states
VALUES  ('NORTHAMPTONSHIRE','UK');

INSERT INTO sites (site_id, address, classroom, location, state_ref)
SELECT 11, address_type('WATERSIDE', 'NORTHAMPTON', 'UK'),
classroom_varray_type(
	classroom_type('311',12,'IT'),
	classroom_type('312',11,'MATHS'),
	classroom_type('313',13,'MEDIA')),
'LEARNING HUB',
REF(sr)
FROM   states   sr
WHERE state = 'NORTHAMPTONSHIRE';



