/*For each doctor, display their id, full name, and the first and last admission date they attended.*/
SELECT 
	admissions.attending_doctor_id, 
    CONCAT(doctors.first_name, ' ', doctors.last_name) AS full_name, 
    MIN(admission_date), 
    MAX(admission_date) 
FROM admissions
JOIN doctors 
	ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctor_id