create table book (ISBN number(10) ,TITLE varchar(20),MRP number(5), publishername varchar(20) ,author varchar(15));
insert into book values(978,'db',650,'pearson','navathe');
insert into book values(980,'os',625,'wiley','silberschatz');
insert into book values(920,'java',649,'mcgrawhill','schildt');
insert into book values(989,'microprocessor',720,'mcgrawhill','gaonker');
insert into book values(970,'algorithms',995,'mit','coreman');
drop table book;

create table publisher(publisherid number(10), publishername varchar(20), city varchar(10),state varchar(15),country varchar(10));
insert into publisher values(101,'pearson','la','california','usa');
insert into publisher values(102,'wiley','sheffield','london','uk');
insert into publisher values(103,'mcgrawhill','nycity','ny','usa');
insert into publisher values(104,'bavaria','bavaria','berlin','germany');
drop table publisher;

select * from book;

select * from publisher;

select b.TITLE,b.MRP,p.city from book b left outer join publisher p on b.publishername=p.publishername;

select b.*,p.publisherid,p.city,p.state,p.country from book b left outer join publisher p on b.publishername=p.publishername;

select publishername,isbn,title,mrp, author from book;

(select b.publishername from book b minus select p.publishername from publisher p) union (select p.publishername from publisher p minus select b.publishername from book b);

select b.publishername from book b intersect select p.publishername from publisher p;

select b.publishername from book b minus select p.publishername from publisher p;




