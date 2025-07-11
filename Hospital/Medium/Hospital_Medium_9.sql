/*Show the city and the total number of patients in the city.
Order from most to least patients and then by city name ascending.*/

SELECT 
	city, 
    count(patient_id) 
from patients
group by city
order by 
	count(patient_id) DESC, 
	city ASC