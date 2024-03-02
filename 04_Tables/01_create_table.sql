-- crear una tabla
create table persons (
	persons_id int,
    persons_name varchar(30),
    persons_age tinyint,
	persons_email varchar(50),
	persons_created date
);
-- not null
create table persons2(
	persons_id int not null,
    persons_name varchar(30) not null,
    persons_age tinyint,
	persons_email varchar(50),
	persons_created date
);
-- dato unico (UNIQUE())
create table persons3(
	persons_id int not null,
    persons_name varchar(30) not null,
    persons_age tinyint,
	persons_email varchar(50),
	persons_created datetime,
    UNIQUE(persons_id)
);
-- Llave primaria (PRIMARY KEY())
create table persons4(
	persons_id int not null,
	persons_name varchar(30) not null,
	persons_age tinyint,
	persons_email varchar(50),
	persons_created datetime,
	UNIQUE(persons_id),
    PRIMARY KEY(persons_id)
);
-- restriccion (CHECK())
-- QUE LOS USUARIOS SEHAN MAYOR A 18 AÑOS
create table persons5(
	persons_id int not null,
	persons_name varchar(30) not null,
	persons_age tinyint,
	persons_email varchar(50),
	persons_created datetime,
	UNIQUE(persons_id),
    PRIMARY KEY(persons_id),
    CHECK(persons_age>=18)
);
--DEFAULT, dato por default
create table persons6(
	persons_id int not null,
	persons_name varchar(30) not null,
	persons_age tinyint,
	persons_email varchar(50),
	persons_created datetime DEFAULT CURRENT_TIMESTAMP(),
	UNIQUE(persons_id),
    PRIMARY KEY(persons_id),
    CHECK(persons_age>=18)
);
-- auto_increment
create table persons7(
	persons_id int not null auto_increment,
	persons_name varchar(30) not null,
	persons_age tinyint,
	persons_email varchar(50),
	persons_created datetime DEFAULT CURRENT_TIMESTAMP(),
	UNIQUE(persons_id),
    PRIMARY KEY(persons_id),
    CHECK(persons_age>=18)
);