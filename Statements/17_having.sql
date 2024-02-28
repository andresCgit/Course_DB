-- es como un where pero para los grupos
-- este te tendria que agrupar por wmail y mostrar el email y la suma de edades asociada a esos email
-- pero como hemos ingresado un having emos puesto una condicional que limita a que mustre la suma de edades que sehan mayores a 35
SELECT users_email, sum(users_age) as 'suma de edades'
FROM users
GROUP BY users_email
HAVING sum(users_age)>35;
