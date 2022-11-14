

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