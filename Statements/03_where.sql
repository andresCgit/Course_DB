SELECT * FROM users WHERE users_age=15;

SELECT users_name FROM users WHERE users_age=15;

SELECT distinct users_age FROM users WHERE users_age=15;

-- where con multiples valores (IN)
SELECT *
FROM users
WHERE users_age in (20,36);

-- 