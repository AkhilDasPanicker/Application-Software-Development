create table worker(id number,wname varchar(20),salary number);
insert into worker values(&id,'&wname',&salary);
select * from worker;


create trigger me after update of salary on worker for each row
declare
  x number:=:old.salary;
  y number:=:new.salary;
  z number:=0;
begin
  z:=y-x;
  dbms_output.put_line('Difference : '||z);
end;

set severoutput on;
update worker set salary=10003 where id=20;

drop trigger me;
