/* crea una columna con el nombre de estado donde se muestra
el nombre y su estado
*/
SELECT users_name, 
CASE
	WHEN users_age < 18 THEN 'menor de edad'
    ELSE 'mayor de edad'
END AS estado_edad
FROM users;
-- LO MISMO PERO CON 0 y 1
SELECT users_name, 
CASE
	WHEN users_age < 18 THEN TRUE
    ELSE FALSE
END AS estado_edad
FROM users;

-- si no se ingresa valor al else devuelve NULL
SELECT users_name, 
CASE
	WHEN users_age < 18 THEN TRUE
    WHEN users_age > 18 THEN FALSE
END AS estado_edad
FROM users;

--ejemplo de case en where, Mostrar a los restante
SELECT *
FROM users
WHERE CASE
	WHEN users_name = 'Sara' THEN 1
    WHEN users_name = 'Brais' THEN 2
    ELSE 3
END = 3;

--case en orden by, muestra primero los 1 luego 2 y final 3
SELECT users_name,users_surname
FROM users
ORDER BY
	CASE
		WHEN users_email = 'braismoure@mouredev.com' THEN 1
		WHEN users_email = 'sara@gmail.com' THEN 2
		ELSE 3
	END;

--case en group by, con case el select
/*
muestra los correos agrupados del 1,2,3 sus maximas
minimas edades y cantidad de usuarios
*/
SELECT 
	CASE
		WHEN users_email = 'braismoure@mouredev.com' THEN 1
		WHEN users_email = 'sara@gmail.com' THEN 2
		ELSE 3
	END as grupo_correo,min(users_age) as 'minima edad',max(users_age) as 'maxima edad', count(*)
FROM users
GROUP BY
	CASE
		WHEN users_email = 'braismoure@mouredev.com' THEN 1
		WHEN users_email = 'sara@gmail.com' THEN 2
		ELSE 3
	END;