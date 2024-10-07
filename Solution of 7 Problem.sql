-- 1. Count the total number of Movies and TV Shows
SELECT type, COUNT(*) AS count
FROM netflix_titles
GROUP BY type;


-- 2. Find the number of titles added in 2021
SELECT COUNT(*) AS count
FROM netflix_titles
WHERE date_added LIKE '%2021';


-- 3. List the top 5 countries with the most titles produced
SELECT country, COUNT(*) AS title_count
FROM netflix_titles
GROUP BY country
ORDER BY title_count DESC
LIMIT 5;

-- 4. Find the oldest TV show in the dataset
SELECT title, release_year
FROM netflix_titles
WHERE type = 'TV Show'
ORDER BY release_year ASC
LIMIT 1;

-- 5. Get the average duration of all movies
SELECT AVG(CAST(REPLACE(duration, ' min', '') AS INT)) AS avg_duration
FROM netflix_titles
WHERE type = 'Movie';

-- 6. Find all titles directed by 'Kirsten Johnson'
SELECT title
FROM netflix_titles
WHERE director = 'Kirsten Johnson';

-- 7. Find titles with a rating of 'TV-MA'
SELECT title, rating
FROM netflix_titles
WHERE rating = 'TV-MA';
