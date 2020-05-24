--Q1: How many rows are in the data_analyst_jobs table?

/*SELECT COUNT(*)
FROM data_analyst_jobs;

--1793

--Q2: Write a query to look at just the first 10 rows. What company is associated with the job 
--posting on the 10th row?

SELECT *
FROM data_analyst_jobs
LIMIT 10;

--ExxonMobil

--Q3: How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN';

--TN postings: 21

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location ILIKE '%TN%'
OR location ILIKE '%KY%';

--TN and KY postings: 27
--Tried out ilike to see if there were any near matches, but there didn't appear to be

--Q4: How many postings in Tennessee have a star rating above 4?

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating>4;

--3

--Q5: How many postings in the dataset have a review count between 500 and 1000?

SELECT COUNT(*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;*/

--151

--Q6: Show the average star rating for each state. The output should show the state as `state` 
--and the average rating for the state as `avg_rating`. Which state shows the highest average 
--rating?

/*SELECT AVG(star_rating) AS avg_rating, data_analyst_jobs.location AS state
FROM data_analyst_jobs
WHERE data_analyst_jobs.location IS NOT NULL
GROUP BY data_analyst_jobs.location
ORDER BY avg_rating DESC;*/

--Nebraska

--Q7: Select unique job titles from the data_analyst_jobs table. How many are there?

SELECT DISTINCT(data_analyst_jobs.title)
FROM data_analyst_jobs;

--881

--Q8: How many unique job titles are there for California companies?

/*SELECT DISTINCT(COUNT(data_analyst_jobs.title))
FROM data_analyst_jobs
WHERE location = 'CA';*/

--376

--Q9: Find the name of each company and its average star rating for all companies that 
--have more than 5000 reviews across all locations. How many companies are there with more 
--than 5000 reviews across all locations?

/*SELECT company, AVG(star_rating)
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company;

--Second have was used as a check to make sure I was getting only review_counts > 5000
SELECT DISTINCT company
FROM data_analyst_jobs
WHERE review_count > 5000;*/

--Q10: Add the code to order the query in #9 from highest to lowest average star rating. 
--Which company with more than 5000 reviews across all locations in the dataset has the 
--highest star rating? What is that rating?

/*SELECT company, AVG(star_rating) AS avg_star_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_star_rating DESC;*/

--Unilever, General Motors, Nike, American Express, Microsoft, Kaiser Permanente: 4.199

--Q11: Find all the job titles that contain the word ‘Analyst’. How many different job 
--titles are there? 

/*SELECT DISTINCT(title) 
FROM data_analyst_jobs
WHERE title iLIKE '%Analyst%';

SELECT COUNT(DISTINCT(title))
FROM data_analyst_jobs
WHERE title iLIKE '%Analyst%';*/

--Q12: How many different job titles do not contain either the word ‘Analyst’ or the word 
--‘Analytics’? What word do these positions have in common?

/*SELECT DISTINCT(title)
FROM data_analyst_jobs
WHERE title NOT iLIKE '%Analyst%' AND title NOT ILIKE '%Analytics%';*/

--4 total: 3 have 'Data', 2 have 'Specialist', 1 has 'Risk' and 'Tableau'










