SELECT DISTINCT type
FROM netflix_movies_detailed_up_to_2025
ORDER BY type;

SELECT id, title FROM movies
ORDER BY id
LIMIT 3 OFFSET 3;

SELECT DISTINCT "cast"
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movie'
  AND genres LIKE '%Action%'
  AND "cast" IS NOT NULL
LIMIT 20;

-- 3) Find 5 action movies released after 2015
SELECT title
FROM netflix_movies_detailed_up_to_2025
WHERE type = 'Movie'
  AND genres LIKE '%Action%'
  AND release_year >= 2015
ORDER BY release_year DESC
LIMIT 5;
--Sort by highest rating first
SELECT title,rating
FROM netflix_movies_detailed_up_to_2025
ORDER BY rating DESC;

SELECT 
title AS movie ,
rating AS score
FROM netflix_movies_detailed_up_to_2025;
