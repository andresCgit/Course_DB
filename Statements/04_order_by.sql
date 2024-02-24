-- ORDER_BY ordenar, por default es ASCENDENTE, los null salen primeros
SELECT * FROM users order by users_age;

SELECT * FROM users order by users_age asc;

SELECT * FROM users order by users_age DESC;

SELECT users_name FROM users where users_age<20 order by users_age asc;
