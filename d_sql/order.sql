--查询用户3下的所有订单及订单详情

select u.rname, 
  o.totle "付款金额",o.phone,o.address,o.pj,o.state,o.dates,o.paytype,
  gs.gname,gs.gprice "单价",om.count "数量",gs.gprice*om.count "应付金额"
from orders o  
  join users u on(u.id=o.userid)
  join ordermore om on(o.id=om.orderid)
  join goods gs on(om.goodid=gs.id)
where u.id=4;

select order_seq.nextval from dual;

--创建订单明细表的插入记录之前的触发器
 create or replace trigger orderm_trigger
 before insert on ordermore for each row
 declare
    mid number:=0;
    
 begin
    if :NEW.ID=0 then
      
      select  om_seq.nextval into mid from dual;
      
      :NEW.ID :=mid;
    end if;
  
  
 end;
 ------------------------------------------

 select * from user_errors;
 
  select  om_seq.nextval  from dual;
  
  --禁用与order表的外键约束
  alter table ordermore
  disable constraint SYS_C005904;
  ------
  
  
  
  