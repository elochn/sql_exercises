/*Show all columns for patient_id 542's most recent admission_date.*/

SELECT *
FROM admissions
WHERE patient_id = 542
GROUP BY patient_id
HAVING MAX(admission_date)

/* 'HAVING' must be used on an aggregated query, so a 'GROUP BY' clause seemed necessary here.

However, after reviewing some proposed solutions, I realized that my query doesn't always guarantee
that the row with the most recent admission_date is correctly selected (e.g. if multiple admissions 
occurred on the same day). A cleaner and more reliable approach would be:*/

SELECT *
FROM admissions
WHERE patient_id = 542
ORDER BY admission_date DESC
LIMIT 1;