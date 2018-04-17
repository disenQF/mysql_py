create database goodsdb;
use goodsdb;

create table user(
id int primary key auto_increment,
name varchar(30) unique,
passwd varchar(30) not null,
regist_date timestamp default current_timestamp
);

create table goods(
 id int primary key auto_increment,
 title varchar(200) not null,
 summary varchar(500),
 factory varchar(100) not null,
 create_date date,
 price float check(price>0),
 holddays int default 30,
 img varchar(200),
 nums int default 10
);

