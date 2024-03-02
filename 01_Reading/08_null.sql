-- comando is null
select * from users where users_email is null;
-- is not null
select * from users where users_email is not null;

-- not y and
select * from users where users_email is not null and users_age>15;

-- si es null se pone la condicion que pusiste
SELECT users_name, users_surname, ifnull(users_age,'NA') as users_age
FROM users;
--tambien se puede utilizar en el calculo

SELECT 1 + ifnull(users_age,0) as 'edad mas uno'
FROM users;
-- se pueden utilizar en fechas, como el caso de que quieras mostrar
-- a los empleados en nomina por medio del campo fecha fin de contrato
-- ya que los trabajadores que siguen su campo es null te ayudara cambiar ese dato y mistralos