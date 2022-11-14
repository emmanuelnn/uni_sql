 -- RunCommand
 -- @C:\csy1026\scripts\qurey_16.sql
 -- QUERY COMMANDS
 
 
 --SELECT STATEMENT
 SELECT * 
 FROM staff;
 /*
 show all column from the staff table
 */
 
 SELECT staff_firstname, staff_lastname, contact_number,email
 FROM staff;

/*
show staff firstname, lastname, contact_number and email from the staff table
*/

 SELECT staff_firstname, staff_lastname, address_line1, town, county, postcode
 FROM staff;
 
/*
show staff firstname, lastname and their full address from the staff table
*/




--WHERE CLAUSE

 SELECT staff_firstname, staff_lastname, address_line1, town, county, postcode
 FROM staff
 WHERE town = 'LONDON';
 
/*
show staff firstname, lastname and their full address who are from london in the staff table
*/
 
 SELECT cost_id,price,payment_method,activity_id
 FROM costs
 WHERE payment_method = 'CR';
/*
show cost_id, price, payment_method, activity_id that is paid in CR payment_method in the costs table
*/
 
 
--ALIAS

 SELECT staff_firstname "firstname", staff_lastname "lastname", dob "date of birth"
 FROM staff;
 
 /*
shows staff firstname, lastname and their date of birth in the staff table it remove the staff part on the firstname and lastname, also change the name for dob to date of birth. 
*/
 
--IN COMPARISON OPERATOR
SELECT s.staff_id, town
FROM staff s
WHERE s.town IN ('OXFORD');

 /*
 shows the staff id who live in oxford
*/

 
-- LIKE OPERATOR

SELECT s.staff_firstname, staff_lastname
FROM staff s
WHERE s.town LIKE 'N%';

 /*
 shows the staff firstname and lastname who live in a town that start with a N
*/
 
 
 -- OR Operator
 SELECT s.staff_firstname
 FROM staff s
 WHERE s.gender = 'M'
 OR s.town = 'OXFORD';
 
 /*
 shows the staff firstname who is a male or from oxford
 */
 
 SELECT staff_firstname,staff_lastname
 FROM staff
 WHERE dob >'31-DEC-2001'
 OR dob < '16-SEP-2001';
 
  /*
 shows the staff firstname and lastname who dob is between 16-SEP-2001 and 31-DEC-2001
 */
 
 
 --NOT Operator
 SELECT c.staff_id, address_line1, town, county, postcode
 FROM staff c
 WHERE NOT (town='LONDON');

  /*
 shows the staff and their full address who don't live in london
 */
 
 --JOIN
 SELECT aim, group_name
 FROM activities JOIN groups
 ON activities.activity_id = groups.activity_id;
 
 /*
 show what group is doing in the activity
 */ 
 
 SELECT staff_firstname, staff_lastname, role_id
 FROM staff JOIN staff_roles
 ON staff.staff_id = staff_roles.staff_id;
 
 /*
 show the staff firstname and lastname with their role_id
 */ 
 
 SELECT staff_id 
 FROM reviews
 WHERE review_id BETWEEN 900056794 AND 900056796;
 
 /*
 show the staff ID with their review_id between 900056794 and 900056796
 */

 
 
 
 
 