1.sum

set serveroutput on;
declare
  a INTEGER;
  b integer;
  c integer;
begin
  a:=&a;
  b:=&b;
  c:=a+b;
  dbms_output.put_line('SuM is ' || c);

end;


2.Greatest

set serveroutput on;
Declare
  a number;
  b number;
  c number;
Begin
  a:=&a;
  b:=&b;
  c:=&c;
  
if(a>b) and (a>c)
  then
  dbms_output.put_line('GREATEST is' || a);
elsif (b>a) and (b>c)
  then
  dbms_output.put_line('GREATEST is' || b);
else
    dbms_output.put_line('GREATEST is' || c);
end if;
end;



3.factorial

set serveroutput on;
declare
  a number:=&a;
  fact number:=1;
begin
  if(a=0)
  then
  dbms_output.put_line('FACTORIAL IS' || a);
  elsif(a=1) 
  then
  dbms_output.put_line('FACTORIAL IS' || a);
  else
  while(a>0)
  loop
    fact:=fact*a;
    a:=a-1;
  end loop;
  dbms_output.put_line('FACTORIAL IS :' || fact);
end if;
end;


4.FIBO

set serveroutput on;
DECLARE
a number:=0;
b number:=1;
c number;
i number;
n number;

BEGIN
n:=&n;
dbms_output.put_line(a);
dbms_output.put_line(b);
for i in 3..n
loop
  c:=a+b;
  dbms_output.put_line(c);
  a:=b;
  b:=c;
end loop;
end;
  
  
5.Reverse

set serveroutput on;
declare
  a number:=&a;
  s number:=0;
  b number;
begin
  while(a>0)
  loop
    b:=mod(a,10);
    s:=(s*10)+b;
    a:=trunc(a/10);
  end loop;
   dbms_output.put_line('The Reversed No Is : ' || s);
end;


6.Pallindrome

set serveroutput on;
declare
  string varchar(20):='&string';
  reverse varchar(20);
  i integer(10);
begin
  for i in reverse 1..length(string)
loop
  reverse:=reverse||substr(string,i,1);
end loop;
  dbms_output.put_line('Reverse : '||reverse);
if string=reverse then
  dbms_output.put_line('The given string '||string||' is a palindrome');
else
  dbms_output.put_line('The given string '||string||' is not a palindrome');
end if;
end;


7.Odd&Even


select *from even;
select * from odd;

drop table even;
drop table odd;

  create table even(e number(10));
  create table odd(o number(10));
set serveroutput on;
declare
  i number;
begin
  for i in 1..50
  loop
  if(mod(i,2)=0)
  then
    insert into even values(i);
    else
    insert into odd values(i);
  end if;
  end loop;
end;



