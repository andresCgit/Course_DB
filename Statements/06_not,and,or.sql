-- not
select * from users where not users_email='sara@gmail.com';
-- and
select * from users where users_email='sara@gmail.com' and users_age=15 ;
-- or
select * from users where users_email='sara@gmail.com' or users_age=15 ;