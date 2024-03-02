-- ADD, agregar
alter table persons8
add persons_surname varchar(40);
-- RENAME COLUMN    TO     , renombrar columna
alter table persons8
RENAME COLUMN persons_surname TO persons_description;
-- MODIFY COLUMN, modificar campo
alter table persons8
MODIFY COLUMN persons_description varchar(100);
-- DROP COLUMN
alter table persons8
DROP COLUMN persons_description ;