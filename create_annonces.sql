drop table if exists announces;
drop table if exists group_categories;
drop table if exists categories;
drop table if exists users;

create table categories(
id_categories int AUTO_INCREMENT not null,
primary key (id_categories),
title varchar(50)
);

create table users(
id_users int AUTO_INCREMENT not null,
primary key (id_users),
first_name varchar(25),
last_name varchar(25)
);

create table  announces(
    id_announces int AUTO_INCREMENT not null,
    primary key (id_announces),
    title varchar(50),
    price int not null,
    description varchar(255),
    id_users int not null,
    constraint foreign key(id_users)
    references users(id_users) 
);

create table group_categories(
    id_announces int not null,
    id_categories int not null,
    primary key (id_announces,id_categories),
    constraint foreign key (id_announces)
	references announces(id_announces),
    constraint foreign key (id_categories)
    references categories(id_categories)
);

