#Task 1 Using count, get the number of cities in the USA
SELECT COUNT(*)
FROM City

#Task2 Find out what the population and average life expectancy for people in Argentina (ARG) is.
WHERE CountryCode = (SELECT Code FROM Country WHERE Name = 'United States');

#Task3 Using ORDER BY, LIMIT, what country has the highest life expectancy?
SELECT Population, LifeExpectancy
FROM Country
WHERE Code = 'ARG';

#Task4 Select 25 cities around the world that start with the letter 'F' in a single SQL query.
SELECT Name, LifeExpectancy
FROM Country
ORDER BY LifeExpectancy DESC
LIMIT 1;

#Task5 Create a SQL statement to display columns Id, Name, Population from the city table and limit results to first 10 rows only.
SELECT Id, Name, Population
FROM city
LIMIT 10;

#Task6 Create a SQL statement to find only those cities from city table whose population is larger than 2000000
SELECT Id, Name, Population
FROM city
WHERE Population > 2000000;

#Task7 Create a SQL statement to find all city names from city table whose name begins with “Be” prefix.
SELECT Name
FROM city
WHERE Name LIKE 'Be%';

#Task8 Create a SQL statement to find only those cities from city table whose population is between 500000-1000000
SELECT Name
FROM city
WHERE Population BETWEEN'500000' AND '1000000';

#Task9 Create a SQL statement to find a city with the lowest population in the city table.
SELECT Population(LOWEST)
FROM city_table;

#Task10 Create a SQL statement to find the capital of Spain (ESP).
SELECT Name
FROM city
WHERE Id = (SELECT Capital FROM country WHERE Code = 'ESP');

#Task11 Create a SQL statement to list all the languages spoken in the Caribbean region.
SELECT DISTINCT L.Language
FROM countrylanguage L
JOIN country C ON L.CountryCode = C.Code
WHERE C.Region = 'Caribbean';

#Task12 Create a SQL statement to find all cities from the Europe continent.
SELECT city.Name
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Continent = 'Europe';

#Task13 Creating an EER Diagram