/*For every admission, display the patient's full name, their admission diagnosis, 
and their doctor's full name who diagnosed their problem.*/

SELECT 
	CONCAT(patients.first_name, ' ',patients.last_name) AS patient_name, 
    diagnosis, 
    CONCAT(doctors.first_name,' ', doctors.last_name) AS doctor_name 
FROM admissions
JOIN patients 
	ON patients.patient_id = admissions.patient_id
JOIN doctors
	ON doctors.doctor_id = admissions.attending_doctor_id