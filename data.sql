-- Insert Data
insert into animals(name,date_of_birth,weight_kg,neutered,escape_attempts) 
values('Agumon','2020-02-03',10.23,true,0),
('Gabumon','2018-11-15',8.0,true,2),
('Pikachu','2021-01-07',15.04,false,1),
('Devimon','2017-05-12',11.0,true,5);

-- Add new data

INSERT INTO animals VALUES 
    ('Charmander', '2020-02-08', 0, false, -11),
    ('Plantmon', '2015-11-21', 2, true, -5.7),
    ('Squirtle', '1993-02-04', 3, false, -12.13),
    ('Angemon', '2005-06-12', 1, false, -45),
    ('Boarmon', '2005-06-07', 7, true, 20.4),
    ('Blossom', '1998-10-13', 3, true, 17),
    ('Ditto', '2022-05-14', 4, true, 22);

-- for update a column value
UPDATE animals
SET species = 'unspecified';

UPDATE animals SET species = 'digimon' WHERE right(name,3) = 'mon';
update animals set species = 'Pokimon' where species = '';
