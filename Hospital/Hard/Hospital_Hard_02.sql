/* Show patient_id, weight, height, isObese from the patients table.
Display isObese as a boolean 0 or 1.

Obese is defined as weight(kg)/(height(m)2) >= 30.
weight is in units kg.
height is in units cm.*/

SELECT 
	patient_id, 
    weight, 
    height, 
    (CASE
    	WHEN weight / POWER((height/100.0),2) >= 30 THEN 1 -- The only correction I did was to use 100.0 instead of 100 to ensure float division
        ELSE 0
    End) AS isObese
FROM patients

-- Lesson learned : If you divide an int by an int you will get an int. Dividing an int by a float will return a float.