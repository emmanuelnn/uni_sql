 -- RunCommand
 -- @C:\csy1026\scripts\drop_16.sql
 -- DROP COMMANDS
 
 --DROP FOREIGN KEY
ALTER TABLE costs
DROP CONSTRAINT fk_c_activities;

ALTER TABLE actions
DROP CONSTRAINT fk_a_reviews;

ALTER TABLE plans
DROP CONSTRAINT fk_p_activities;

ALTER TABLE plans
DROP CONSTRAINT fk_p_stages;

ALTER TABLE reviews
DROP CONSTRAINT fk_r_staff;

ALTER TABLE reviews
DROP CONSTRAINT fk_r_groups;

ALTER TABLE groups
DROP CONSTRAINT fk_g_activities;

ALTER TABLE groups
DROP CONSTRAINT fk_g_staff_roles;

ALTER TABLE staff_roles
DROP CONSTRAINT fk_sr_staff;
 
 --DROP PRIMARY KEY
ALTER TABLE staff
DROP CONSTRAINT pk_staff;

ALTER TABLE roles
DROP CONSTRAINT pk_roles;

ALTER TABLE resources
DROP CONSTRAINT pk_resources;

ALTER TABLE activities
DROP CONSTRAINT pk_activities;

ALTER TABLE stages
DROP CONSTRAINT pk_stages;

ALTER TABLE staff_roles
DROP CONSTRAINT pk_staff_roles;

ALTER TABLE groups
DROP CONSTRAINT pk_groups;

ALTER TABLE reviews
DROP CONSTRAINT pk_reviews;

ALTER TABLE plans
DROP CONSTRAINT pk_plans;

ALTER TABLE actions
DROP CONSTRAINT pk_actions;

ALTER TABLE costs
DROP CONSTRAINT pk_costs;

ALTER TABLE activity_resources
DROP CONSTRAINT pk_activity_resources;

 --DROP CHECK CONSTRAINTS
ALTER TABLE staff
DROP CONSTRAINT ck_staff_firstname;

ALTER TABLE staff
DROP CONSTRAINT ck_staff_lastname;

ALTER TABLE staff
DROP CONSTRAINT ck_gender;

ALTER TABLE staff
DROP CONSTRAINT ck_enrolled;

ALTER TABLE groups
DROP CONSTRAINT ck_group_size;

ALTER TABLE costs
DROP CONSTRAINT ck_payment_method;

ALTER TABLE staff
DROP CONSTRAINT ck_gender_nn;

ALTER TABLE staff
DROP CONSTRAINT ck_contact_number_nn;

ALTER TABLE staff
DROP CONSTRAINT uk_email;

 
 --DROP TABLE
DROP TABLE activity_resources;
DROP TABLE costs;
DROP TABLE actions;
DROP TABLE plans;
DROP TABLE reviews;
DROP TABLE groups;
DROP TABLE staff_roles;
DROP TABLE stages;
DROP TABLE activities;
DROP TABLE resources;
DROP TABLE roles;
DROP TABLE staff;

 --DROP SEQUENCES
 
 DROP SEQUENCE seq_staff_role_id;
 
 DROP SEQUENCE seq_staff_id;

 PURGE RECYCLEBIN;
 
 
 
 
 /*
 use SELECT TNAME FROM TAB; to see if the tables are dropped
 
 use SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS; to see if the CONSTRAINTS are dropped
 
 the result of it is you will see no data
 
 */