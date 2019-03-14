create table product(pid number(10),pname varchar(20),grade varchar(6));
insert into product values(&pid,'&pname','&grade');
select * from product;
create table sales(pid number(10),s_amount number(20),salesdate date ,sales_day varchar(20));
insert into sales values(&pid,&s_amount,'&salesdate','&salesday');
select * from sales;

create function fun1(a1 in number,a2 in number,a3 in number)
return number
as
b1 number;
q number;
z number;
r number;
x varchar(10);
y varchar(10);
begin
select pname into x from product where pid=a1;
select grade into y from product where pid=a1;
dbms_output.put_line('pname:'||x);
dbms_output.put_line('pgrade:'||y);
select sum(s_amount)into q from sales where pid=a2;
dbms_output.put_line('sum:'||q);
if(q>a3)then
update product set grade='a' where pid=a2;
end if;
select count(pid) into z from sales where pid=a2;
if(z<1)then
r:=0;
else
r:=1;
end if;
return(r);
end;

set serveroutput on;
declare
d1 number;
c1 number;
tar number;
f1 number;
pnull exception;
begin
d1:=&d1;
c1:=&c1;
tar:=&tar;
f1:=fun1(d1,c1,tar);
if f1=0 then
 raise pnull;
end if; 
exception
 when pnull then
  dbms_output.put_line('no sales corresponding to the given pid');
when no_data_found then
 dbms_output.put_line('no data found');
 end;
 
 drop table product;
 drop function fun1;