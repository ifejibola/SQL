#Person Table
CREATE TABLE person(person_id SMALLINT UNSIGNED,fname VARCHAR(20),lname VARCHAR(20), gender ENUM('M','F'), 
						birth_date DATE, street VARCHAR(30), city VARCHAR(20), state VARCHAR(20), country VARCHAR(20),
							postal_code VARCHAR(20), CONSTRAINT pk_person PRIMARY KEY(person_id));
DESC person;

#Create fav food table
CREATE TABLE favorite_food
	(person_id SMALLINT UNSIGNED,
		food VARCHAR(20),
        CONSTRAINT pk_favorite_food PRIMARY KEY(person_id, food),
        CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
			REFERENCES person(person_id)
	);
DESC favorite_food;
#Generate numeric keys, auto-increment feature for primary key column.(alter table, used to modify definition of an exisiting table

set foreign_key_checks=0;
ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
set foreign_key_checks=1;

INSERT INTO person(person_id, fname, lname, gender, birth_date)
    VALUES (null, 'William', 'Turner','M', '1992-05-27');
    
SELECT person_id, fname, lname, birth_date
	FROM person;
    
#Specify data to retrieve
SELECT person_id, fname, lname, birth_date
	FROM person
    WHERE person_id = 1;