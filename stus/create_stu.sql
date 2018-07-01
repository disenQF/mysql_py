create table clazz
(
id int primary key auto_increment,
name varchar(20));

create table stu
(id int primary key auto_increment,
 name varchar(20),
 clazz_id int,
 constraint clazz_id_fk foreign key(clazz_id) references clazz(id));

insert clazz(name)
values ('Python1801'),('H51801'),('Java1801');

insert stu(name,clazz_id)
values ('disen',1), ('cindy',1),('tom', 2),('cici',3),('judy',2);

alter table stu drop foreign key clazz_id_fk;
alter table stu add constraint clazz_id_fk foreign key(clazz_id) references clazz(id) on delete cascade;

