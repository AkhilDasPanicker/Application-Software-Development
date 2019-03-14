drop table theatre;
drop table outdat;
drop trigger trii;


create table theatre(mov_id number(10),mov_name varchar(20),lang varchar(20),revw number(10));
insert into theatre values(101,'Junglebook','English',6);
insert into theatre values(501,'Parava','Malayalam',8);
insert into theatre values(601,'OSO','Hindi',9);
insert into theatre values(701,'Avengers','English',9);
insert into theatre values(801,'Hobbit','English',7);
insert into theatre values(901,'Don','Hindi',6);
select * from theatre;
create table outdat(mov_id number(10),mov_name varchar(20));

create trigger trii 
after delete on theatre
for each row
begin
  insert into outdat values(:old.mov_id,:old.mov_name);
end;

set server output on
declare
a1 number:=&a1;
a2 number:=&a2;
begin
  if(a2<5) then
  delete from theatre where mov_id=a1;
  end if;
end;


select * from theatre;
select * from outdat;

