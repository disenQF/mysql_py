drop table if exists dept;

create table dept(
  id int primary key auto_increment,
  name varchar(20)
);

drop table if exists post;
create table post(
  id int primary key auto_increment,
  name varchar(20),
  dept_id int references dept(id)
);

drop table if exists level;
create table level(
  id int primary key auto_increment,
  name varchar(20),
  post_id int references post(id)
);