/*Show all of the patients grouped into weight groups.
Show the total amount of patients in each weight group.
Order the list by the weight group decending.

For example, if they weight 100 to 109 they are placed in the 100 weight group, 110-119 = 110 weight group, etc.*/

SELECT 
	COUNT(patient_id) AS patients_in_group, 
    FLOOR(weight/10)*10 AS weight_group -- Using FLOOR was a suggested method
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC

/* I used FLOOR(weight/10) * 10 to group weights by decade ranges.
   FLOOR was suggested to me, and I realized that dividing by 10 before multiplying is necessary 
   to get the correct weight group. */