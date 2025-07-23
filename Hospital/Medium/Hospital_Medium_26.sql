/*Display a single row with max_visits, min_visits, average_visits 
where the maximum, minimum and average number of admissions per day is calculated. 
Average is rounded to 2 decimal places.*/

SELECT 
	MAX(number_visits), 
    MIN(number_visits),
    ROUND(AVG(number_visits), 2)
FROM (
  SELECT COUNT(*) AS number_visits
  FROM admissions
  GROUP BY admission_date
)

/* I initially struggled with this one and used a suggested solution to understand it.
   I learned that I first needed to count the number of admissions per day, so I wrote:

       SELECT COUNT(*) AS number_visits FROM admissions GROUP BY admission_date

   I realized that this subquery creates a temporary table with daily visit counts,
   which I could then use to compute MAX, MIN, and AVG. */
   