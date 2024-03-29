-- server command
pg_ctl -D "C:\Program Files\PostgreSQL\16\data" start

-- Quries 
SELECT * FROM animals WHERE name like '%mon';
SELECT * FROM animals WHERE date_of_birth between '2016-01-01' and '2019-12-31';
SELECT * FROM animals WHERE neutered = true and escape_attempts<3;
SELECT date_of_birth  FROM animals WHERE name in ('Agumon','Pikachu');
SELECT name,escape_attempts from animals where weight_kg >10.5;
select name from animals where neutered = true;
select * from animals where name  not in ('Gabumon');
select * from animals where weight_kg between 10.4 and 17.3;

-- day2
begin;
TRUNCATE TABLE animals;
rollback;
begin;
delete from animals where date_of_birth > '2022-01-01';
SAVEPOINT savepoint_name;
update animals set weight_kg = weight_kg* -1;
rollback to savepoint_name;
update animals  set weight_kg = weight_kg* -1 where weight_kg< 0;
select count(name) as total_animals from animals;
select count(escape_attempts) as never_escape from animals where escape_attempts = 0;
select avg(weight_kg) as avg_weight from animals;
 select neutered, count(escape_attempts) as names from animals group by neutered;
 select species as type, min(weight_kg) as min_weight, max(weight_kg) as max_weight from animals group by species;

 select species as type, avg(escape_attempts) as avg_escape from animals where date_of_birth between '1990-01-01' and '2000-12-31' group by species;