/*Show patient_id, first_name, last_name, and attending doctor's specialty.
Show only the patients who has a diagnosis as 'Epilepsy' and the doctor's first name is 'Lisa'

Check patients, admissions, and doctors tables for required information.*/

SELECT 
	patients.patient_id,
    patients.first_name, 
    patients.last_name, 
    doctors.specialty
FROM admissions
JOIN doctors
	ON doctors.doctor_id = admissions.attending_doctor_id
JOIN patients
	ON patients.patient_id = admissions.patient_id
WHERE diagnosis = 'Epilepsy' AND doctors.first_name = 'Lisa'