-- RunCommand 
-- @C:\csy1026\scripts\constraint_16.sql
-- CONSTRAINT COMMANDS



--PRIMARY KEYS
ALTER TABLE staff
ADD CONSTRAINT pk_staff
PRIMARY KEY (staff_id);

ALTER TABLE roles
ADD CONSTRAINT pk_roles
PRIMARY KEY (role_id);

ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (resource_id);

ALTER TABLE activities
ADD CONSTRAINT pk_activities
PRIMARY KEY (activity_id);

ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_id);

ALTER TABLE staff_roles
ADD CONSTRAINT pk_staff_roles
PRIMARY KEY (staff_role_id);

ALTER TABLE groups
ADD CONSTRAINT pk_groups
PRIMARY KEY (group_id);

ALTER TABLE reviews
ADD CONSTRAINT pk_reviews
PRIMARY KEY (review_id);

ALTER TABLE plans
ADD CONSTRAINT pk_plans
PRIMARY KEY (plan_id);

ALTER TABLE actions
ADD CONSTRAINT pk_actions
PRIMARY KEY (action_id);

ALTER TABLE costs
ADD CONSTRAINT pk_costs
PRIMARY KEY (cost_id);


ALTER TABLE activity_resources
ADD CONSTRAINT pk_activity_resources
PRIMARY KEY (activity_id, resource_id);


--FOREIGN KEYS
ALTER TABLE staff_roles
ADD CONSTRAINT fk_sr_staff
FOREIGN KEY (staff_id)
REFERENCES staff (staff_id);

ALTER TABLE groups
ADD CONSTRAINT fk_g_staff_roles
FOREIGN KEY (staff_role_id)
REFERENCES staff_roles (staff_role_id);

ALTER TABLE groups
ADD CONSTRAINT fk_g_activities
FOREIGN KEY (activity_id)
REFERENCES activities (activity_id);

ALTER TABLE reviews
ADD CONSTRAINT fk_r_groups
FOREIGN KEY (group_id)
REFERENCES groups (group_id);

ALTER TABLE reviews
ADD CONSTRAINT fk_r_staff
FOREIGN KEY (staff_id)
REFERENCES staff (staff_id);

ALTER TABLE plans
ADD CONSTRAINT fk_p_stages
FOREIGN KEY (stage_id)
REFERENCES stages (stage_id);

ALTER TABLE plans
ADD CONSTRAINT fk_p_activities
FOREIGN KEY (activity_id)
REFERENCES activities (activity_id);

ALTER TABLE actions
ADD CONSTRAINT fk_a_reviews
FOREIGN KEY (review_id)
REFERENCES reviews (review_id);

ALTER TABLE costs
ADD CONSTRAINT fk_c_activities
FOREIGN KEY (activity_id)
REFERENCES activities (activity_id);










--CHECK CONSTRAINTS

ALTER TABLE staff
ADD CONSTRAINT ck_staff_firstname
CHECK (staff_firstname = UPPER(staff_firstname));

ALTER TABLE staff
ADD CONSTRAINT ck_staff_lastname
CHECK (staff_lastname = UPPER(staff_lastname));

ALTER TABLE staff
ADD CONSTRAINT ck_gender
CHECK (GENDER IN ('F','M'));

ALTER TABLE staff
ADD CONSTRAINT ck_enrolled
CHECK (ENROLLED IN ('Y','N'));

ALTER TABLE groups
ADD CONSTRAINT ck_group_size
CHECK (GROUP_SIZE IN ('4','5','6','7','8','9','10'));

ALTER TABLE costs
ADD CONSTRAINT ck_payment_method
CHECK (PAYMENT_METHOD IN ('CS','CR'));

ALTER TABLE staff
ADD CONSTRAINT ck_gender_nn
CHECK (GENDER IS NOT NULL);

ALTER TABLE staff
ADD CONSTRAINT ck_contact_number_nn
CHECK (CONTACT_NUMBER IS NOT NULL);

ALTER TABLE staff
ADD CONSTRAINT uk_email
UNIQUE (email);


/*
CS stands for cash and CR stands for card
*/

--DEFAULTS

ALTER TABLE staff
MODIFY  (town
DEFAULT 'NORTHAMPTON');

ALTER TABLE staff
MODIFY  (country
DEFAULT 'UK');

ALTER TABLE staff
MODIFY  (department
DEFAULT 'FAST');

ALTER TABLE staff
MODIFY  (enrolled
DEFAULT 'Y');

ALTER TABLE groups
MODIFY  (group_name
DEFAULT 'NONE');



/*
SELECT CONSTRAINT_NAME FROM USER_CONSTRAINTS;

to veiw all constraint
*/


