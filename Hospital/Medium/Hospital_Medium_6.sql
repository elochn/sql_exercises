/* Show the total amount of male patients and the total amount of female patients in the patients table.
Display the two results in the same row. */

/* Here was my attempt, which was incorrect : */
SELECT 
    (SELECT COUNT(patient_id) 
    FROM patients
    WHERE gender = 'M') AS male_count,

    (SELECT COUNT(patient_id) 
    FROM patients
    WHERE gender = 'F') AS female_count;
FROM patients 
GROUP BY gender

/* What I understood from this mistake:
- The subqueries already scan the whole table independently, so there’s no need for an outer 'FROM patients'.
- Adding 'GROUP BY gender' creates multiple rows because it groups the table’s rows, which prevents showing just one row with both counts.


Corrected version: */

SELECT 
    (SELECT COUNT(patient_id) 
    FROM patients
    WHERE gender = 'M') AS male_count,

    (SELECT COUNT(patient_id) 
    FROM patients
    WHERE gender = 'F') AS female_count;