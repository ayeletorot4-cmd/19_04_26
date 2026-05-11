CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    genre TEXT,
    year INTEGER,
    rating REAL,
    minutes INTEGER
);

INSERT INTO movies (id, title, genre, year, rating, minutes) VALUES
(1, 'Metro Rush', 'Action', 2005, 7.9, 118),
(2, 'Quiet Lake', 'Drama', 2012, 8.1, 124),
(3, 'Night Pulse', 'Horror', 2018, 6.8, 95),
(4, 'Skyline Code', 'Action', 2021, 7.4, 109);

SELECT 
title AS movie_name , 
genre AS type,  
year AS release_year
FROM movies;

SELECT 
rating * 10 AS rating_bucket
FROM movies;

SELECT 
rating * 10 AS rating_bucket,
title AS movie_name
FROM movies
ORDER BY rating_bucket DESC ,movie_name;

SELECT rating,title
FROM movies
ORDER BY rating DESC, title;
