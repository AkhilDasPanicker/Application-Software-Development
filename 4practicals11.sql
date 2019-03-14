1.Smallest of 2 numbers

create procedure smallest_num(a1 in number, b1 in number, c1 out number )
is
begin
 if(a1<b1) then
  c1:=a1;
 else
  c1:=b1;
 end if;
end smallest_num;

set serveroutput on;

declare
a1 number;
b1 number;
c1 number;

begin
a1:=&a1;
b1:=&b1;
smallest_num(a1,b1,c1);
dbms_output.put_line('Smallest No Is : ' || c1);
end;

drop procedure smallest_num;



2.Employee

create table employee(eid number(10),ename varchar(20),salary number(10),dept varchar(20),wef varchar(10));
insert into employee values(1,'Jose',40000,'Finance','03-05-16');
insert into employee values(2,'Vimal',20000,'HR','11-06-16');
insert into employee values(3,'Yadhu',25000,'Sales','17-08-16');
insert into employee values(4,'Robin',19000,'Finance','09-01-16');
insert into employee values(5,'Roshin',10000,'HR','07-04-16');
drop table employee;



create procedure esal(e in number, salinc in number)
is
  begin
    update employee set salary=(salary+(salinc*salary)/100) where eid=e;
end esal;



create procedure reffd(d in number)
is 
begin 
 update employee set wef=sysdate where eid=d;
end reffd;


set serveroutput on;
declare
  a1 number;
  b1 number;
  begin  
    a1:=&a1;
    b1:=&b1;
reffd(a1);
esal(a1,b1);
end;

select* from employee;
drop procedure esal;
drop procedure reffd;
drop table employee;





































