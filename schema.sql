-- Create Table
create table animals (id int, name char(30), date_of_birth date, escape attempts int, neutered boolean, weight_kg decimal)

-- Add column
alter table animals add column species char(50);