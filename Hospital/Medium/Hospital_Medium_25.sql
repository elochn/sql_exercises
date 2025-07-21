/*Show patient_id, first_name, last_name from patients whose does not have any records in the admissions table. 
(Their patient_id does not exist in any admissions.patient_id rows.)*/

SELECT 
    patients.patient_id, 
    first_name, 
    last_name
FROM patients
LEFT JOIN admissions /* LEFT JOIN keeps all information in the left-hand table (patients), and adds the value NULL if there is no match in the right-hand table (admissions). */
    ON patients.patient_id = admissions.patient_id
WHERE admissions.patient_id IS NULL 