-- in, hace un filtradoa algo semejante que queremos buscar
select * from users where users_name in ('brais');
-- traer a brais y sara
select * from users where users_name in ('brais','sara');
-- error
select * from users where users_name in ('brai');