CREATE TABLE movie (
    movie_id SERIAL PRIMARY KEY,
    title TEXT,
    media_type_id INT REFERENCES media_type(media_type_id)
)

INSERT INTO movie (title, media_type_id)
VALUES
('Gattaca', 3),
('Voldermort and the Pesky Child', 3);


--PART 2
ALTER TABLE movie
ADD COLUMN genre_id INT REFERENCES genre(genre_id);

SELECT * FROM genre;

UPDATE movie
SET genre_id = 20
WHERE movie_id = 1;

UPDATE movie
SET genre_id = 22
WHERE movie_id = 2;

--Part 3 joins
SELECT * FROM movie
JOIN genre ON movie.genre_id = genre.genre_id;

SELECT title, name FROM movie
JOIN genre ON movie.genre_id = genre.genre_id;

SELECT * FROM m
JOIN genre g ON m.genre_id = g.genre_id;



SELECT ar.name, al.title
FROM artist ar
JOIN album al ON ar.artist_id = al.artist_id


--Part 4 Subqueries
SELECT * FROM track
WHERE genre_id IN (
    SELECT genre_id FROM genre
    WHERE name IN ('Jazz', 'Blues')
);


--set the value to null
SELECT * FROM employee
WHERE employee_id = 1;


UPDATE employee 
SET phone = NULL
WHERE employee_id = 1;


SELECT * FROM customer
WHERE company is NULL;


SELECT DISTINCT country FROM customer;

SELECT *  FROM customer WHERE fax IS NULL;

DELETE FROM customer WHERE fax is NULL;


