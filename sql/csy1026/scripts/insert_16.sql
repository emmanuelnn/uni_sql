 -- RunCommand
 -- @C:\csy1026\scripts\insert_16.sql
 -- INSERT COMMANDS




-- INSERT STAFFS

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056789,'EMMANUEL','NWOKORO','18 FULHAM','SURREY','SS8 2QR','07237745238','KENECHI78@GMAIL.COM','M','Y','31-DEC-2001');

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,town,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056790,'JOHN','WILLIAMS','30 KANE ST','LONDON','GREATER LONDON','SW8 2HR','07700900675','JWILLIAMS@GMAIL.COM','M','Y','17-MAY-2001');

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,town,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056791,'PETER','JONES','6 HAMILTON WAY','LONDON','GREATER LONDON','LD2 3RE','07700900403','PJONES@GMAIL.COM','M','Y','18-DEC-2001');

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,town,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056792,'LEVI','THOMSON','2 MIDDLE STREET','OXFORD','OXFORDSHIRE','TW19 5BX','07700900764','LTHOMSON@GMAIL.COM','M','Y','29-FEB-2000');

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,town,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056793,'SAMSON','SMITH','1 CHESTERFIELD ROAD','LONDON','GREATER LONDON','TS13 4SG','07700900766','SSMITH@GMAIL.COM','M','Y','30-OCT-2000');

INSERT INTO staff (staff_id,staff_firstname,staff_lastname,address_line1,town,county,postcode,contact_number,email,gender,enrolled,dob)
VALUES(200056794,'LEAH','ROSE','3 OLD STOCKBRIDGE','LONDON','GREATER LONDON','SO20 8QJ','07700900242','LROSE@GMAIL.COM','F','Y','16-SEP-2001');



/*
2000 IS FOR THE STAFF
 
THE WITH COLUMN METHOD

*/

-- INSERT ROLES

INSERT INTO roles (role_id,role_name)
VALUES(300056789,'PROJECT MANAGEMENT');

INSERT INTO roles (role_id,role_name)
VALUES(300056790,'PROGRAMMING');

INSERT INTO roles (role_id,role_name)
VALUES(300056791,'ADMIN');

INSERT INTO roles (role_id,role_name)
VALUES(300056792,'GROUP LEADER');

INSERT INTO roles (role_id,role_name)
VALUES(300056793,'SUPERVISOR');

INSERT INTO roles (role_id,role_name)
VALUES(300056794,'MANAGER');



/*
3000 IS FOR THE ROLES
*/

-- INSERT RESOURCES



INSERT INTO resources VALUES(400056794,'SOFTWARE','BASIC SOFTWARE','10.50');

INSERT INTO resources VALUES(400056795,'TRAINING','BASIC TRAINING','10.50');

INSERT INTO resources VALUES(400056796,'SOFTWARE PART 2','ADVANCE SOFTWARE PARTS','10.50');

INSERT INTO resources VALUES(400056797,'TRAINING PART 2','ADVANCE TRAINING PARTS','10.50');

INSERT INTO resources VALUES(400056798,'INSPECTION','CHECKING EVERYTHING BEFORE AND AFTER','10.50');

/*
4000 IS FOR THE RESOURCES

THE WITHOUT COLUMN METHOD
*/

-- INSERT ACTIVITIES

INSERT INTO activities VALUES(500056794,'13:30','BREAK');

INSERT INTO activities VALUES(500056795,'16:00','PEER MARKING');

INSERT INTO activities VALUES(500056796,'12:15','BE IN GROUPS AND DO PLANNING');

INSERT INTO activities VALUES(500056797,'15:30','FINISHING THE GROUP WORK');

INSERT INTO activities VALUES(500056798,'14:45','GROUP LEADER CAN HELP YOU');

INSERT INTO activities VALUES(500056799,'16:30','FINAL MAKRKING FOR THE PROJECT');

/*
5000 IS FOR THE ACTIVITIES
*/

-- INSERT STAGES

INSERT INTO stages (stage_id,stage_name)
VALUES(600056794,'DEVELOPMENT');

INSERT INTO stages (stage_id,stage_name)
VALUES(600056795,'DESIGN');

INSERT INTO stages (stage_id,stage_name)
VALUES(600056796,'TESTING');

INSERT INTO stages (stage_id,stage_name)
VALUES(600056797,'PLANNING');

INSERT INTO stages (stage_id,stage_name)
VALUES(600056798,'REPORTING');

INSERT INTO stages (stage_id,stage_name)
VALUES(600056799,'FEEDBACK');

/*
6000 IS FOR THE STAGES
*/

-- INSERT STAFF_ROLES

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056794,200056789,300056794);

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056795,200056792,300056790);

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056796,200056793,300056792);

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056797,200056794,300056789);

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056798,200056791,300056791);

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(700056799,200056790,300056793);


/*
7000 IS FOR THE STAFF_ROLES
*/

-- INSERT GROUPS


INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056794,700056794,500056794,'7','ALL STARS');

INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056795,700056795,500056795,'8','BALLERS');

INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056796,700056796,500056796,'6','THE BEST');

INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056797,700056797,500056797,'7','JOB DONE');

INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056798,700056798,500056798,'9','WINNERS');

INSERT INTO groups (group_id,staff_role_id,activity_id,group_size,group_name)
VALUES(800056799,700056799,500056799,'5','ELITES');


/*
8000 IS FOR THE GROUPS
*/

-- INSERT REVIEWS

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056794,800056794,200056789,'10-APR-2021');

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056795,800056795,200056790,'02-APR-2021');

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056796,800056796,200056791,'09-APR-2021');

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056797,800056797,200056792,'05-APR-2021');

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056798,800056798,200056793,'08-APR-2021');

INSERT INTO reviews (review_id,group_id,staff_id,date_registered)
VALUES(900056799,800056799,200056794,'11-APR-2021');


/*
9000 IS FOR THE REVIEWS
*/

-- INSERT PLANS

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056794,600056797,500056796,'20-APR-2021');

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056795,600056795,500056794,'21-APR-2021');

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056796,600056794,500056798,'22-APR-2021');

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056797,600056796,500056797,'23-APR-2021');

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056798,600056798,500056795,'24-APR-2021');

INSERT INTO plans (plan_id,stage_id,activity_id,start_date)
VALUES(100056799,600056799,500056799,'24-APR-2021');



/*
1000 IS FOR THE PLANS
*/

-- INSERT ACTIONS

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056794,900056794,'08-MAY-2021');

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056795,900056795,'02-MAY-2021');

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056796,900056796,'15-MAY-2021');

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056797,900056797,'04-MAY-2021');

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056798,900056798,'13-MAY-2021');

INSERT INTO actions (action_id,review_id,deadline)
VALUES(210056799,900056799,'07-MAY-2021');




/*
2100 IS FOR THE ACTIONS
*/

-- INSERT COSTS
INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056794,'30.50','CR',500056794);

INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056795,'40.00','CR',500056795);

INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056796,'10.50','CS',500056796);

INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056797,'05.00','CS',500056797);

INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056798,'10.00','CS',500056798);

INSERT INTO costs (cost_id,price,payment_method,activity_id)
VALUES(220056799,'30.00','CR',500056799);


/*
2200 IS FOR THE COSTS
*/

-- INSERT ACTIVITY_RESOURCES

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056794,400056794);

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056795,400056798);

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056796,400056795);

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056797,400056796);

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056798,400056797);

INSERT INTO activity_resources (activity_id,resource_id)
VALUES(500056799,400056798);


--sequence for staff

CREATE SEQUENCE seq_staff_id
INCREMENT BY 1
START WITH 200056795
NOCYCLE;

INSERT INTO staff(staff_id,staff_firstname,staff_lastname,address_line1,county,postcode,contact_number,email,gender,dob)
VALUES (seq_staff_id.NEXTVAL,'TOM','SMITH','LAMBETH','NORTHAMPTONSHIRE','NN3 2PQ','07823765369','TSMITH@GMAIL.COM','M','29-AUG-1999');



CREATE SEQUENCE seq_staff_role_id
INCREMENT BY 1
START WITH 700056800
NOCYCLE;

INSERT INTO staff_roles (staff_role_id,staff_id,role_id)
VALUES(seq_staff_role_id.NEXTVAL,200056795,300056793);


