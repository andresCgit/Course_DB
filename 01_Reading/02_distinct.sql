-- DISTINCT, eliminar duplicados y trabajar con datos unicos
SELECT distinct * FROM users;
SELECT DISTINCT users_age FROM users;
-- contar valores unicos
SELECT DISTINCT count(users_email)
FROM users;
-- usar en subconsultas
SELECT avg(sd.users_age) 
FROM (
select distinct users_age,users_initDate
from users) AS sd;