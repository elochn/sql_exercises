/* Show first name, last name and role of every person that is either patient or doctor.
The roles are either "Patient" or "Doctor" */

SELECT first_name, last_name, 'Patient' AS role 
FROM patients 
    UNION ALL
SELECT first_name, last_name, 'Doctor' AS role 
FROM doctors

/* It's interesting how we can create and populate a new 'role' column just by using UNION */