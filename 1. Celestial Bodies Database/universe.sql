create database universe;

CREATE TABLE constellation(
	constellation_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL UNIQUE,
	galaxy_id int NOT NULL
);

ALTER TABLE constellation ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

INSERT INTO constellation VALUES (1, 'Sagittarius', 1);
INSERT INTO constellation VALUES (2, 'Andromeda', 2);
INSERT INTO constellation VALUES (3, 'Corvus', 3);
INSERT INTO constellation VALUES (4, 'Cygnus', 4);
INSERT INTO constellation VALUES (5, 'Centaurus', 5);
INSERT INTO constellation VALUES (6, 'Canis Major', 6);

create table galaxy(
	galaxy_id serial PRIMARY KEY,
	name varchar(30) not null UNIQUE,
	galaxy_types varchar(30),
	description text,
	size_in_million_ly numeric(10,3) NOT NULL
	constellation_id int
);

ALTER TABLE galaxy ADD FOREIGN KEY(constellation_id) REFERENCES constellation(constellation_id);

INSERT INTO galaxy VALUES (1, 'MilkyWay', 'spiral', 'luminous band of stars', 0.100,1);
INSERT INTO galaxy VALUES (2, 'Andromeda', 'spiral', 'nearest large galaxy', 0.200,2);
INSERT INTO galaxy VALUES (3, 'Antennae', 'irregular', 'looks like insects antennae', 45.000,3);
INSERT INTO galaxy VALUES (4, 'Cygnus A', 'elliptical', 'looks like double galaxy', 760.000,4);
INSERT INTO galaxy VALUES (5, 'Backward', 'spiral', 'appears to rotate backwards', 0.123,5);
INSERT INTO galaxy VALUES (6, 'Canis Major Dwarf', 'irregular', 'contains few billion stars', 0.025,6);


CREATE TABLE star(
	star_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL UNIQUE,
	galaxy_id integer NOT NULL,
	age_in_million_years integer,
	distance_from_earth_ly numeric(20,8)
);

ALTER TABLE star ADD FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id);

INSERT INTO star VALUES (1, 'Sun', 1, 4603, 0.00001581);
INSERT INTO star VALUES (2, 'Sirius', 1, 230, 8.61100000);
INSERT INTO star VALUES (3, 'Canopus', 1, 25, 309.80000000);
INSERT INTO star VALUES (4, 'Vega', 1, 455, 25.05000000);
INSERT INTO star VALUES (5, 'Capella', 1, 620, 42.92000000);
INSERT INTO star VALUES (6, 'Rigel', 1, 8, 864.30000000);



CREATE TABLE planet(
	planet_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL UNIQUE,
	star_id INT NOT NULL,
	age_in_by numeric(5,3),
	has_life boolean,
	has_rings boolean,
	planet_types VARCHAR(30),
	number_of_moons int
);

ALTER TABLE planet ADD FOREIGN KEY(star_id) REFERENCES star(star_id);


INSERT INTO planet VALUES (1, 'Mercury', 1, 4.503, false, false, 'Terrestrial', 0);
INSERT INTO planet VALUES (2, 'Venus', 1, 4.503, false, false, 'Terrestrial', 0);
INSERT INTO planet VALUES (3, 'Earth', 1, 4.543, true, false, 'Terrestrial', 1);
INSERT INTO planet VALUES (4, 'Mars', 1, 4.603, false, false, 'Terrestrial', 2);
INSERT INTO planet VALUES (5, 'Jupiter', 1, 4.603, false, true, 'Gas Giant', 79);
INSERT INTO planet VALUES (6, 'Saturn', 1, 4.503, false, false, 'Gas Giant', 82);
INSERT INTO planet VALUES (7, 'Uranus', 1, 4.503, false, true, 'Ice Giant', 27);
INSERT INTO planet VALUES (8, 'Neptune', 1, 4.503, false, true, 'Ice Giant', 14);
INSERT INTO planet VALUES (13, 'Ceres', 1, 4.573, false, false, 'Dwarf Planet', 0);
INSERT INTO planet VALUES (9, 'Pluto', 1, 4.603, false, false, 'Dwarf Planet', 5);
INSERT INTO planet VALUES (10, 'Eris', 1, 4.503, false, false, 'Dwarf Planet', 1);
INSERT INTO planet VALUES (11, 'Haumea', 1, 4.503, false, false, 'Dwarf Planet', 2);
INSERT INTO planet VALUES (12, 'Makemake', 1, 4.503, false, false, 'Dwarf Planet', 1);


CREATE TABLE moon(
	moon_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL UNIQUE,
	planet_id INT NOT NULL,
	discoverer VARCHAR(30),
	discovery_year int
);

ALTER TABLE moon ADD FOREIGN KEY(planet_id) REFERENCES planet(planet_id);


INSERT INTO moon VALUES (1, 'Metis', 5, 'Synnott', 1979);
INSERT INTO moon VALUES (2, 'Adrastea', 5, 'Jewitt', 1979);
INSERT INTO moon VALUES (3, 'Amalthea', 5, 'Barnard', 1892);
INSERT INTO moon VALUES (4, 'Thebe', 5, 'Synnott', 1979);
INSERT INTO moon VALUES (5, 'lo', 5, 'Galileo', 1610);
INSERT INTO moon VALUES (6, 'Europa', 5, 'Galileo', 1610);
INSERT INTO moon VALUES (7, 'Ganymede', 5, 'Galileo', 1610);
INSERT INTO moon VALUES (8, 'Callisto', 5, 'Galileo', 1610);
INSERT INTO moon VALUES (9, 'Themisto', 5, 'Kowal', 1975);
INSERT INTO moon VALUES (10, 'Leda', 5, 'Kowal', 1974);
INSERT INTO moon VALUES (11, 'Ersa', 5, 'Shepard', 2018);
INSERT INTO moon VALUES (12, 'Himalia', 5, 'Perrine', 1904);
INSERT INTO moon VALUES (14, 'Lysithea', 5, 'Nicholson', 1938);
INSERT INTO moon VALUES (15, 'Elara', 5, 'Perrine', 1905);
INSERT INTO moon VALUES (16, 'Dia', 5, 'Sheppard', 2000);
INSERT INTO moon VALUES (17, 'Carpo', 5, 'Sheppard', 2003);
INSERT INTO moon VALUES (18, 'Valetudo', 5, 'Sheppard', 2016);
INSERT INTO moon VALUES (19, 'Euporie', 5, 'Sheppard', 2001);
INSERT INTO moon VALUES (20, 'Eupheme', 5, 'Sheppard', 2003);
INSERT INTO moon VALUES (13, 'Pandia', 5, 'Sheppard', 2017);
