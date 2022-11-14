


DESC companies;

SELECT training_budget  
FROM companies;  -- shows all the values of the price (no decimal place)



UPDATE companies 
SET training_budget = training_budget+(training_budget * 0.17867865); -- shows al the values with DECIMAL

SELECT 
CEIL(training_budget), 
FLOOR(training_budget), 
ROUND(training_budget,2), 
TRUNC(training_budget) 
FROM companies;

SELECT 
MAX(CEIL(training_budget)),
MAX(FLOOR (training_budget)), 
MAX(ROUND (training_budget,2)), 
MAX(TRUNC (training_budget))
FROM companies;



SELECT CONCAT('Good morning ',CONCAT (SUBSTR(student_firstname, 1,2),
  SUBSTR(student_surname, 1,5)))
FROM students;


SELECT CONCAT('Good morning ',CONCAT(SUBSTR(LOWER(student_firstname), 1,2),
(SUBSTR(LOWER(student_surname), 1,5))))
FROM students;


