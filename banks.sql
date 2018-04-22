
drop database if exists banks;
create database banks;
use banks;

CREATE TABLE bank (
  id int(11) primary key AUTO_INCREMENT,
  name varchar(50) not null,
  address varchar(50) DEFAULT NULL
);
alter table bank
add constraint name_address_uniq unique(name,address);

INSERT INTO bank VALUES 
(1,'中国工商银行北京分行','朝阳路11号'),
(2,'中国工商银行南海分行','三沙路192号'),
(3,'中国工商银行西安分行','高新四路112号'),
(4,'中国工商银行西安分行','高新四路133'),
(5,'中国建设银行成都分行','玉林路110号'),
(6,'中国银行西安分行','高新六路28号');


CREATE TABLE user (
  id int(11) primary key AUTO_INCREMENT,
  number varchar(18) unique,
  name varchar(50) NOT NULL,
  phone varchar(11)
);


INSERT INTO user VALUES 
(1,'101100199202048876','吴鹏','15644231987'),
(2,'101100199303048976','吴能','17644231987'),
(3,'101100199208248876','吴钱','18644231987'),
(4,'101100198203048275','马云','19844231987');

CREATE TABLE card (
  id int(11) primary key AUTO_INCREMENT,
  number varchar(24) unique,
  passwd varchar(32) not null,
  money float default 10,
  bank_id int(11) ,
  user_id int(11),
  CONSTRAINT bank_id_fk FOREIGN KEY (bank_id) REFERENCES bank (id),
  CONSTRAINT user_id_fk FOREIGN KEY (user_id) REFERENCES user (id)
);

INSERT INTO card VALUES 
(1,'9199919292876521','202cb962ac59075b964b07152d234b70',10,1,1),
(2,'9188819292876521','250cf8b51c773f3f8dc8b4be867a9a02',10,2,2);


create table trade
(id int primary key auto_increment,
 card_id int,
 to_card_id int,
 trade_time timestamp default current_timestamp,
 bank_id int,
 trade_money float,
 trade_type int(1) comment "0 查询, 1 存款, 2 取款 , 3 转账",
 constraint t_card_id_fk foreign key(card_id) references card(id),
 constraint to_card_id_fk foreign key(to_card_id) references card(id),
 constraint t_bank_id_fk foreign key(bank_id) references bank(id)
);

alter table card add state enum('Y','N') default 'Y' comment "Y 正常, N注销";

INSERT INTO card VALUES
(3,'918888319292876521',md5('345'),10,2,3,'N');

