/*Show unique first names from the patients table which only occurs once in the list.

For example, if two or more people are named 'John' in the first_name column then don't include their name in the output list. If only 1 person is named 'Leo' then include them in the output.*/

SELECT first_name FROM patients
GROUP BY first_name
HAVING COUNT(first_name)=1

/* Notes:
- I initially confused WHERE and HAVING: HAVING is specifically used to filter after aggregation (e.g. COUNT, SUM, etc.)
- Also, HAVING needs a GROUP BY clause, otherwise the database doesn't know what to aggregate on*/