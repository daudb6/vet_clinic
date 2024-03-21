-- Quries 
SELECT * FROM animals WHERE RIGHT(name, 3) = 'mon';
SELECT * FROM animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * FROM animals WHERE neutered = true and escape_attempts<3;
SELECT date_of_birth  FROM animals WHERE name in ('Agumon','Pikachu');
SELECT name,escape_attempts from animals where weight_kg >10.5;
select name from animals where neutered = true;
select * from animals where name  not in ('Gabumon');
select * from animals where weight_kg between 10.4 and 17.3;