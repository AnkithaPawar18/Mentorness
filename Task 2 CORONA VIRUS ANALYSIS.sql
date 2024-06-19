--Q1. Write a code to check NULL values
SELECT COUNT(*) AS NullCount
FROM ['Corona Virus Dataset$']
WHERE Province IS NULL
   OR Country IS NULL
   OR Latitude IS NULL
   OR Longitude IS NULL
   OR Date IS NULL
   OR Confirmed IS NULL
   OR Deaths IS NULL
   OR Recovered IS NULL;


--Q2. If NULL values are present, update them with zeros for all columns. 
---NULL Values are not present in this data set

-- Q3. check total number of rows
SELECT COUNT(*) AS TotalRows
FROM ['Corona Virus Dataset$']


-- Q4. Check what is start_date and end_date
SELECT MIN(Date) AS Start_Date, MAX(Date) AS End_Date
FROM ['Corona Virus Dataset$']


-- Q5. Number of month present in dataset

SELECT MONTH(Date) as months, COUNT(*) as NO_OF_Months 
FROM ['Corona Virus Dataset$'] 
GROUP BY MONTH(Date)
order by months


-- Q6. Find monthly average for confirmed, deaths, recovered
SELECT MONTH(Date) AS Months,
       AVG(Confirmed) AS AvgConfirmed,
	   AVG(Deaths) AS AvgDeaths,
       AVG(Recovered) AS AvgRecovered
FROM ['Corona Virus Dataset$']
GROUP BY MONTH(Date)
ORDER BY Months




-- Q7. Find most frequent value for confirmed, deaths, recovered each month 
SELECT MONTH(Date) AS Month,
       COUNT(Confirmed) AS MostFrequentConfirmed,
       COUNT(Deaths) AS MostFrequentDeaths,
       COUNT(Recovered) AS MostFrequentRecovered
FROM ['Corona Virus Dataset$']
GROUP BY MONTH(Date)


-- Q8. Find minimum values for confirmed, deaths, recovered per year
SELECT YEAR(Date) AS Year,
       MIN(Confirmed) AS MinConfirmed,
       MIN(Deaths) AS MinDeaths,
       MIN(Recovered) AS MinRecovered
FROM ['Corona Virus Dataset$']
GROUP BY YEAR(Date)


-- Q9. Find maximum values of confirmed, deaths, recovered per year
SELECT YEAR(Date) AS Year,
       MAX(Confirmed) AS MaxConfirmed,
       MAX(Deaths) AS MaxDeaths,
       MAX(Recovered) AS MaxRecovered
FROM ['Corona Virus Dataset$']
GROUP BY YEAR(Date)


-- Q10. The total number of case of confirmed, deaths, recovered each month
SELECT MONTH(Date) AS Month,
       SUM(Confirmed) AS TotalConfirmed,
       SUM(Deaths) AS TotalDeaths,
       SUM(Recovered) AS TotalRecovered
FROM ['Corona Virus Dataset$']
GROUP BY MONTH(Date)
ORDER BY MONTH(Date)


-- Q11. Check how corona virus spread out with respect to confirmed case
--      (Eg.: total confirmed cases, their average, variance & STDEV )
SELECT COUNT(*) AS TotalConfirmedCases,
       AVG(Confirmed) AS AvgConfirmed,
       VAR(Confirmed) AS VarianceConfirmed,
       STDEV(Confirmed) AS StdevConfirmed
FROM ['Corona Virus Dataset$']


-- Q12. Check how corona virus spread out with respect to death case per month
--      (Eg.: total confirmed cases, their average, variance & STDEV )
SELECT MONTH(Date) AS Month,
       SUM(Deaths) AS TotalDeaths,
       AVG(Deaths) AS AvgDeaths,
       VAR(Deaths) AS VarianceDeaths,
       STDEV(Deaths) AS StdevDeaths
FROM ['Corona Virus Dataset$']
GROUP BY MONTH(Date)


-- Q13. Check how corona virus spread out with respect to recovered case
--      (Eg.: total confirmed cases, their average, variance & STDEV )
SELECT COUNT(*) AS TotalRecoveredCases,
       AVG(Recovered) AS AvgRecovered,
       VAR(Recovered) AS VarianceRecovered,
       STDEV(Recovered) AS StdevRecovered
FROM ['Corona Virus Dataset$']


-- Q14. Find Country having highest number of the Confirmed case
SELECT TOP 1 Country, MAX(Confirmed) AS HighestConfirmed
FROM ['Corona Virus Dataset$']
GROUP BY Country
ORDER BY HighestConfirmed DESC



-- Q15. Find Country having lowest number of the death case
SELECT TOP 1 Country, MIN(Deaths) AS LowestDeaths
FROM ['Corona Virus Dataset$']
GROUP BY Country
ORDER BY LowestDeaths DESC


-- Q16. Find top 5 countries having highest recovered case
SELECT TOP 5 Country, MAX(Recovered) AS HighestRecovered
FROM ['Corona Virus Dataset$']
GROUP BY Country
ORDER BY HighestRecovered DESC