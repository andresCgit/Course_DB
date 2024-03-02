-- agrupar por edad y mostrar edad y la cantidad de usuario con esa edad
SELECT users_age, COUNT(*) AS num_users
FROM users
GROUP BY users_age;
-- agrupar por email y mostrar el email y la suma de las edades de los email repetidos
SELECT users_email, SUM(users_age) AS total_age
FROM users
GROUP BY users_email;
-- agrupar por nombres, mostrar los nombre y las minimas y maximas edades
SELECT users_name, MIN(users_age) AS min_age, MAX(users_age) AS max_age
FROM users
GROUP BY users_name;
-- agrupar por email nulos, y mostrar la cantidad de usuarios nulos
SELECT COUNT(*) AS num_users_without_email
FROM users
WHERE users_email IS NULL;
/*tambien se le puede ingresar el order by y el where
agrupara por edad donde email sea parecido a sara%
y ordenara en forma ascendente mostrando la edad del usuario
y la cantidad de usuarios con esa edad,
*/
SELECT users_age, COUNT(*) AS num_users
FROM users WHERE users_email like 'sara%'
GROUP BY users_age order by users_age asc;


SELECT users_name, COUNT(*) AS num_users
FROM users WHERE users_email like '%com'
GROUP BY users_name order by users_name desc;
