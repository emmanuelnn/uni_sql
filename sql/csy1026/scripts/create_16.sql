-- RunCommand 
-- @C:\csy1026\scripts\create_16.sql
-- CREATE TABLE COMMANDS

CREATE TABLE staff(
staff_id 		NUMBER(9),
staff_firstname VARCHAR(20),
staff_lastname 	VARCHAR(20),
address_line1	VARCHAR(30),
town 	VARCHAR(30) DEFAULT 'NORTHAMPTON',
county 	VARCHAR(30),
postcode 	VARCHAR(9),
country 	VARCHAR(30) DEFAULT 'UK',
contact_number 	VARCHAR(13) NOT NULL,
email 	VARCHAR(320),
department 	VARCHAR(8) DEFAULT 'FAST',
gender 	CHAR(1) NOT NULL,
enrolled 	CHAR(1) DEFAULT 'Y',
dob 	DATE);

CREATE TABLE roles(
role_id 	NUMBER(9),
role_name 	VARCHAR(30));

CREATE TABLE resources(
resource_id 	NUMBER(9),
service_name 	VARCHAR(15),
description 	VARCHAR(100),
cost 	NUMBER(4,2));

CREATE TABLE activities(
activity_id 	NUMBER(9),
time 	VARCHAR(5),
aim 	VARCHAR(50));

CREATE TABLE stages(
stage_id 	NUMBER(9),
stage_name 	VARCHAR(15));

CREATE TABLE staff_roles(
staff_role_id 	NUMBER(9),
staff_id 	NUMBER(9),
role_id 	NUMBER(9));

CREATE TABLE groups(
group_id 	NUMBER(9),
staff_role_id 	NUMBER(9),
activity_id 	NUMBER(9),
group_size 	VARCHAR(2),
group_name 	VARCHAR(15) DEFAULT 'NONE');

CREATE TABLE reviews(
review_id 	NUMBER(9),
group_id 	NUMBER(9),
staff_id 	NUMBER(9),
date_registered 	DATE);

CREATE TABLE plans(
plan_id  	NUMBER(9),
stage_id 	NUMBER(9),
activity_id 	NUMBER(9),
start_date 	DATE);

CREATE TABLE actions(
action_id	NUMBER(9),
review_id	NUMBER(9),
Deadline	DATE);

CREATE TABLE costs(
cost_id 	NUMBER(9),
price 	NUMBER(4,2),
payment_method 	VARCHAR(2),
activity_id 	NUMBER(9));

CREATE TABLE activity_resources(
activity_id 	NUMBER(9),
resource_id 	NUMBER(9));




/*
SELECT TNAME FROM TAB

to veiw all TABLE NAMES
