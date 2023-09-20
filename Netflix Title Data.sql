
--Content Added in the Last Year:--
SELECT title, date_added
FROM netflix
WHERE date_added > '2022-01-01';

SELECT [title]
FROM [netflix]
WHERE [type] = 'Movie' AND [release_year] < 2014;

--Count of Movies vs. TV Shows:--
SELECT type, COUNT(*) as count
FROM netflix
GROUP BY type;

--Top 5 Countries Producing the Most Content:--
SELECT country, COUNT(*) as count
FROM netflix
GROUP BY country
ORDER BY count DESC
LIMIT 5;

--List of Movies with a Specific Rating (e.g., TV-MA):--
SELECT title
FROM netflix
WHERE type = 'Movie' AND rating = 'TV-MA';

--Number of Releases Per Year:--
SELECT release_year, COUNT(*) as count
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;

--Find Titles Containing a Specific Word (e.g., "love"):--
SELECT title
FROM netflix
WHERE title LIKE '%love%';

--Find the Longest Movies (by duration):--
SELECT title, duration
FROM netflix
WHERE type = 'Movie'
ORDER BY CAST(REPLACE(duration, ' min', '') AS INTEGER) DESC
LIMIT 5;

--Count of Content by Genre:--
SELECT listed_in, COUNT(*) as count
FROM netflix
GROUP BY listed_in
ORDER BY count DESC;
