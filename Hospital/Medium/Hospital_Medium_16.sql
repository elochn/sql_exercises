/*Show all of the days of the month (1-31) and how many admission_dates occurred on that day. 
Sort by the day with most admissions to least admissions.
*/

SELECT
  DAY(admission_date),
  COUNT(*) AS number_of_admissions
FROM admissions
GROUP BY DAY(admission_date)
ORDER BY number_of_admissions DESC