

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