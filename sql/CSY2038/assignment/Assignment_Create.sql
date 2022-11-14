
-- CREATING THE TABLES AND UDTS
-- CSY2038_122@student/CSY2038_122

-- CREATING TABLE
CREATE TABLE retreats (
retreat_id NUMBER(6),
purpose VARCHAR2(30));

-- DEFINING OBJECT TABLES
CREATE OR REPLACE TYPE address_type AS OBJECT (
street VARCHAR2(30),
city VARCHAR2(30),
county VARCHAR2(30),
postcode VARCHAR2(8));
/
-- ALTERING RELATIONAL TABLES TO REFERENCE OBJECT TABLES

CREATE TABLE addresses OF address_type;

-- CREATING TABLE

CREATE TABLE settings(
setting_id NUMBER(6),
area VARCHAR2(30),
address address_type);

-- DEFINING VARRAYS

CREATE OR REPLACE TYPE social_media_type AS OBJECT (
name VARCHAR2(30),
username VARCHAR2(30));
/

CREATE TYPE social_media_varray_type AS VARRAY(50) OF social_media_type;
/

-- USING VARRAYS IN RELATIONAL TABES

CREATE TABLE guests (
guest_id NUMBER(6),
guest_firstname VARCHAR2(30),
guest_surname VARCHAR2(30),
phone_number NUMBER(15),
date_of_birth DATE,
social_media social_media_varray_type,
address REF address_type SCOPE IS addresses);

CREATE OR REPLACE TYPE accommodation_type AS OBJECT(
room_number VARCHAR2(6),
room_name VARCHAR2(30),
room_size VARCHAR2(30),
price NUMBER(5,2));
/

-- DEFINING NESTED TABLES

CREATE TYPE accommodation_table_type AS TABLE OF accommodation_type;
/

-- CREATING TABLE

CREATE TABLE retreat_settings (
retreat_setting_id NUMBER(6),
setting_id NUMBER(6),
retreat_id NUMBER(6),
accommodation accommodation_table_type)
NESTED TABLE accommodation STORE AS accommodation_table;

-- CREATING TABLE
CREATE TABLE programmes (
programme_id NUMBER(6),
guest_id NUMBER(6),
retreat_setting_id NUMBER(6),
cost NUMBER(6,2),
programme_date DATE);



 /*
 use SELECT TNAME FROM TAB; to see the tables
 
 use SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS; to see the CONSTRAINTS
  
 */
