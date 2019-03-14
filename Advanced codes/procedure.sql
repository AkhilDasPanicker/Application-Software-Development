create procedure smallest(n1 in number,n2 in number,n3 out number)
is
begin
if n1>n2 then
  n3:=n2;
else
  n3:=n1;
end if;
end smallest;

set serveroutput on
declare
  x number:=&x;
  y number:=&y;
  z number:=0;
begin
  smallest(x,y,z);
  dbms_output.put_line('Smallest is '||z);
end;


create table employe(emp_id number,ename varchar(20),salary number,dept varchar(20),wef date);
insert into employe values(&emp_id,'&ename',&salary,'&dept','&wef');
select * from employe;

create procedure em(n1 in number,n2 in number)
is
begin
  update employe set salary=salary+((salary*n2)/100) where emp_id=n1;
  update employe set wef=(select sysdate from dual) where emp_id=n1;
end em;

drop procedure emp1;

set serveroutput on
declare
  e number:=&e;
  inc number:=&inc;
begin
  em(e,inc);
end;