create view stu_view
as
select stu.name sname,clazz.name cname
from stu
join clazz on stu.clazz_id = clazz.id;
