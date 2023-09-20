SELECT title, date_added
FROM netflix
WHERE date_added > '2022-01-01';
SELECT [title]
FROM [netflix]
WHERE [type] = 'Movie' AND [release_year] < 2014;
SELECT type, COUNT(*) as count
FROM netflix
GROUP BY type;
SELECT country, COUNT(*) as count
FROM netflix
GROUP BY country
ORDER BY count DESC
LIMIT 5;
SELECT title
FROM netflix
WHERE type = 'Movie' AND rating = 'TV-MA';
SELECT release_year, COUNT(*) as count
FROM netflix
GROUP BY release_year
ORDER BY release_year DESC;
SELECT title
FROM netflix
WHERE title LIKE '%love%';
SELECT title, duration
FROM netflix
WHERE type = 'Movie'
ORDER BY CAST(REPLACE(duration, ' min', '') AS INTEGER) DESC
LIMIT 5;
SELECT listed_in, COUNT(*) as count
FROM netflix
GROUP BY listed_in
ORDER BY count DESC;
