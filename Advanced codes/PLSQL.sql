--sum
set serveroutput on
declare
  x number:=&x;
  y number:=&y;
  z number:=0;
begin
  z:=x+y;
  dbms_output.put_line('Sum is : '||z);
end;

--largest
set serveroutput on
declare
  x number:=&x;
  y number:=&y;
  z number:=&z;
begin
  if x>y and x>z then
    dbms_output.put_line('Greatest is : '||x);
  elsif y>x and y>z then
    dbms_output.put_line('Greatest is : '||y);
  else 
    dbms_output.put_line('Greatest is : '||z);
  end if;
end;

--factorial
set serveroutput on
declare
  x number:=&x;
  fact number:=1;
  i number;
begin
  if x=0 or x=1 then
    dbms_output.put_line('Factorial : 1');
  elsif x<0 then
    dbms_output.put_line('Enter Positive num');
  else
    for i in 1..x
      loop
        fact:=fact*i;
      end loop;
  end if;
  dbms_output.put_line('Factorial : '||fact);
end;

--fibinocci
set serveroutput on
declare
 n number:=&n;
 j number:=0;
 k number:=1;
 l number:=0;
 i number:=0;
begin
  if n=1 then
  dbms_output.put_line(' '||j);
  else
  dbms_output.put_line(' '||j);
  dbms_output.put_line(' '||k);
    for i in 3..n
    loop
     l:=j+k;
     dbms_output.put_line(' '||l);
     j:=k;
     k:=l;
    end loop;  
  end if;
end;

--reverse
set serveroutput on
declare
 n number:=&n;
 d number;
 s number:=0;
 temp number:=n;
begin
 while(n>0)
 loop
 s:=s*10;
 d:=mod(n,10);
 s:=s+d;
 n:=trunc(n/10);
 end loop;
  dbms_output.put_line(s);
end;

--palindrome
set serveroutput on
declare
input varchar(20):='&input';
reverse varchar(20);
i integer(10);
begin
for i in reverse 1..length(input)
loop
reverse:=reverse||substr(input,i,1);
end loop;
if input=reverse then
dbms_output.put_line('the given string '||input||' is a palindrome');
else
dbms_output.put_line('the given sting '||input||'is not a palindrome');
end if;
end;

--odd even
set serveroutput on
declare
i number;
create table even(eno number(10));
create table odd(ono number(10));
begin
for i in 1..50
loop
if mod(i,2)=0 then
 insert into even values(i);
else
 insert into odd values(i);
end if;
end loop;
end;

select *from odd;
select * from even;
