select * from user_tables where lower(table_name) ='cart';

select * from user_tables where table_name = upper('cart');

select instr('hello,disen','e',1,1) from dual;

select replace('hello,disen','disen','jerry') from dual;

select initcap('hello,disen, what are you doing?') from dual;

-- disen-20
select name || '-' || age as nameAge from t_stu;

select concat(concat(name,'-'),age) as nameage from t_stu;

select lpad('hello,disen',length('hello,disen')+2,'*') from dual;

select lpad(name,length(name)+2,'*') from t_stu;

select round(gprice*1.01,1) from goods;

select gprice,trunc(gprice,5) from goods;

select trunc('28999.8978',-2),round('28999.8578',-2),trunc('28999.8978',2),round('28999.8578',2) from dual;

select mod(200,9) from dual;

select sysdate from dual;

alter session set nls_date_format = 'yyyy-MM-dd HH:mi:ss';

select MONTHS_BETWEEN
       (TO_DATE('2017-05-01','yyyy-mm-dd'),TO_DATE('2016-07-01','yyyy-mm-dd')) from dual;
       
       
   select to_char(dates,'yyyy-mm-dd hh:mi:ss') from orders;
   
   select add_months(sysdate,5) from dual;
    
   select to_char(sysdate,'day') from dual;  --day 星期
   
   select next_day(sysdate,'星期日') from dual;
   
   select * from v$nls_parameters;
   
   select to_number('￥11.10','L99,999.99')+20.56 from dual;
   
   select to_char(gprice,'$99,999.00') from goods;


  select coalesce(null,null,'123','abc') from dual;
  
  ---4班学员 增加 age +5,  5班的学生加2
  select name,age,
    case cls_id when 4 then age+8
                when 5 then age+2
                else age end as  "实际年龄"
  
  from t_stu;
  
  ---面食类的食物 价格 打8.8折
  select gs.gname,to_char(gs.gprice,'L99.99') "原价", 
    case t.name when '面食' then to_char(gs.gprice*0.88,'L00.99')
                when '米饭' then to_char(gs.gprice*0,'L00.99')
                else to_char(gs.gprice,'L00.99') end "会员价"
  from goods gs join goodtype t on (gs.gtype=t.id);
  
    
  
 select gs.gname,to_char(gs.gprice,'L99.99') "原价", 
    decode(t.name, '面食', to_char(gs.gprice*0.88,'L00.99'),
                   '米饭' , to_char(gs.gprice*0,'L00.99'),
                   to_char(gs.gprice,'L00.99'))  "会员价"
  from goods gs join goodtype t on (gs.gtype=t.id);
  
  
  
  