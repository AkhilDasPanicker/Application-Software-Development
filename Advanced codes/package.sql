create table supplier(suid number,sname varchar(10),scomm number,scity varchar(10));
insert into supplier values(1,'abc',1000,'abc1');
insert into supplier values(2,'xyz',2000,'xyz1');
insert into supplier values(3,'lmn',1500,'lmn1');
insert into supplier values(4,'qwe',3000,'qwe1');
insert into supplier values(5,'zxc',2500,'zxc1');

drop package ssales;
drop package body ssales;

create package ssales as
      procedure abc (a1 in number,c1 out varchar);
    function xyz(a1 in number) return number;
end ssales;

create package body ssales as
     procedure abc (a1 in number,c1 out varchar)
    is 
    begin 
         select sname into c1 from supplier where suid=a1;
    end abc;
    function xyz(a1 in number)
    return number
    is 
    s1 number:=0;
    s2 number; 
    begin
    select scomm into s2 from supplier where suid=a1;
    s1:=s2*12;
    return(s1);
    END;
end ssales;

set serveroutput on;
declare
   a1 number:=&a1;
   c1 varchar(10);
   b1 number:=0;
begin
   ssales.abc(a1,c1);
   b1:=ssales.xyz(a1);
   dbms_output.put_line('name : '||c1);
   dbms_output.put_line('Annual Commission : '||b1);
end;
   