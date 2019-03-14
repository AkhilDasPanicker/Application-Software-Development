create function evensum(n in number) return number as
esum number:=0;
num number:=0;
begin
while(num<=n)
loop
  esum := esum+num;
  num := num+2;
end loop;
return esum;
end;


set serveroutput on
declare
  n number:=&n;
  f number;
begin
  f:=evensum(n);
  dbms_output.put_line('Sum is'||f);
end;

drop function evensum;