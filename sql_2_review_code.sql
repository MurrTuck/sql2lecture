CREATE TABLE racers (
    racerId SERIAL PRIMARY KEY,
    name TEXT,
    age INTEGER,
    country TEXT
)


INSERT INTO racers (name, age, country)
VALUES
('Jergen Ikea', 29, 'Sweden'),
('Mario Marinara', 54, 'Italy'),
('Otto von Schokolade', 13, 'Switzerland'),
('Dave Johnson', 25, 'Canada'),
('Luigi Linguini', 24, 'Italy');




CREATE TABLE bikes (
bikeId SERIAL PRIMARY KEY,
racerId INTEGER REFERENCES racers(racerId),
type TEXT,
color TEXT
);


INSERT INTO bikes (racerId, type, color)
VALUES
(1, 'Meatball Machine', 'blue'),
(3, 'Chococycle', 'brown'),
(4, 'Regular', 'gray'),
(2, 'Fizzoli', 'red'),
(5, 'Fizzoli', 'green');