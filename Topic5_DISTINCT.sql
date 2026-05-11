CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    genre TEXT,
    year INTEGER,
    language TEXT
);
INSERT INTO movies (id, title, genre, year, language) VALUES
(1, 'Metro Rush', 'Action', 2005, 'English'),
(2, 'Quiet Lake', 'Drama', 2012, 'English'),
(3, 'Night Pulse', 'Horror', 2018, 'Spanish'),
(4, 'Skyline Code', 'Action', 2021, 'English'),
(5, 'Tiny Planet', 'Family', 2010, 'French'),
(6, 'Silver Track', 'Thriller', 2016, 'Spanish'),
(7, 'Golden Path', 'Drama', 2016, 'French');

SELECT DISTINCT language
FROM movies
ORDER BY language ASC;

SELECT DISTINCT year
FROM movies
WHERE genre in ('Drama','Action')
ORDER BY year;

SELECT DISTINCT genre, language
FROM movies
ORDER BY language;

SELECT COUNT(DISTINCT genre) AS count_of_distinct
FROM movies;
