-- 1. Find the most common genre in the dataset
SELECT listed_in, COUNT(*) AS genre_count
FROM netflix_titles
GROUP BY listed_in
ORDER BY genre_count DESC
LIMIT 1;


-- 2. Get the number of TV Shows or Movies added each year
SELECT release_year, type, COUNT(*) AS count
FROM netflix_titles
GROUP BY release_year, type
ORDER BY release_year ASC;


-- 3. Find all shows or movies that have 'India' as the country of production
SELECT title, release_year, type
FROM netflix_titles
WHERE country = 'India';


-- 4. Get the count of titles for each rating type
SELECT rating, COUNT(*) AS title_count
FROM netflix_titles
GROUP BY rating
ORDER BY title_count DESC;


-- 5. Find the longest-running TV show based on duration
SELECT title, duration
FROM netflix_titles
WHERE type = 'TV Show'
ORDER BY CAST(REPLACE(duration, ' Seasons', '') AS INT) DESC
LIMIT 1;


-- 6. List all movies longer than 2 hours
SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie' AND CAST(REPLACE(duration, ' min', '') AS INT) > 120;


-- 7. Find titles that were added to Netflix in the last 3 years
SELECT title, date_added
FROM netflix_titles
WHERE release_year >= 2021
ORDER BY date_added DESC;


-- 8. List all titles that do not have a director mentioned
SELECT title, type, release_year
FROM netflix_titles
WHERE director IS NULL;


-- 9. Find all titles featuring 'Will Smith' in the cast
SELECT title, type
FROM netflix_titles
WHERE cast LIKE '%Will Smith%';


-- 10. Get the number of unique directors in the dataset
SELECT COUNT(DISTINCT director) AS unique_directors
FROM netflix_titles
WHERE director IS NOT NULL;
