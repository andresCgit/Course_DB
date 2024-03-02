-- cirve para establecer alias en el momento que estamos mostrando datos
-- as, alias mostrar con otro nombre a una columna
select users_name,users_initDate as "fecha de inicio en la programacion" from users where users_age between 15 and 36;
-- concat, concatenar, mostrar el nombre y apellido en una columna
select concat(users_name, users_surname) as 'nombre completo' from users;
