-- si es null se pone la condicion que pusiste
SELECT users_name, users_surname, ifnull(users_age,'NA') as users_age
FROM users;