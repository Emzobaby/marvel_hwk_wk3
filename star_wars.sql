-- DROP TABLE table_name;
--
-- CREATE TABLE table_name(
--   column_name1 DATA_TYPE,
--   column_name2 DATA_TYPE,
--   column_name3 DATA_TYPE
-- )

DROP TABLE characters CASCADE;

CREATE TABLE characters(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR,
  darkside BOOLEAN,
  age INT
);

DROP TABLE lightsabers;

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  hilt_metal VARCHAR,
  colour VARCHAR,
  character_id INT8 REFERENCES characters(id) -- References is our foreign key.
);

INSERT INTO characters(name, darkside, age) VALUES('Obi-Wan Kenobi', false, 27);
INSERT INTO characters(name, darkside, age) VALUES('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age) VALUES('Darth Maul', true, 32);
INSERT INTO characters(name, darkside, age) VALUES('Yoda', false, 324);

INSERT INTO lightsabers(colour, character_id, hilt_metal) VALUES ('red', 3, 'gold');
INSERT INTO lightsabers(colour, character_id, hilt_metal) VALUES ('green', 2, 'palladium');
INSERT INTO lightsabers(colour, character_id, hilt_metal) VALUES ('red', 1, 'gold');
INSERT INTO lightsabers(colour, character_id, hilt_metal) VALUES ('red', 2, 'gold');
SELECT * FROM characters;
SELECT * FROM lightsabers;
SELECT * FROM lightsabers WHERE character_id = 2;

-- INSERT INTO characters(name, darkside, age) VALUES('Luke Skywalker', false, 17); -- Adds a character.

-- SELECT name FROM characters; -- Prints all the names.

-- SELECT COUNT(*) FROM characters; -- Counts all the rows and returns a number.

-- UPDATE characters SET darkside = true; -- Makes all darkside values true.

-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker'; -- Sets Anakin's darkside to true.

-- UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker'; -- Updates Anakin's name and darkside.
--
-- UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kenobi'; -- Updates Obi Wan's age.
--
-- DELETE FROM characters WHERE name = 'Obi-Wan Kenobi'; -- Deletes Obi Wan.
--
-- INSERT INTO characters(name, darkside, age) VALUES('Rey', false, 21); -- Adds a new character.
-- DELETE FROM characters WHERE name = 'Darth Maul'; -- Deletes Darth Maul.

-- INSERT INTO characters(name, darkside, age) VALUES('Stormtrooper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES('Stormtrooper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES('Stormtrooper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES('Stormtrooper', true, 25);
-- INSERT INTO characters(name, darkside, age) VALUES('Stormtrooper', true, 25);

-- UPDATE characters SET age = 29 WHERE id = 4; -- Updates Stormtrooper 4's age.
--
-- SELECT * FROM characters;
