/*Display the total amount of patients for each province. Order by descending.*/
SELECT 
	province_name, 
    COUNT(patient_id) AS patients_count 
FROM patients
JOIN province_names
	ON patients.province_id = province_names.province_id
GROUP BY province_names.province_id
ORDER BY patients_count DESC