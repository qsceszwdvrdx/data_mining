create database record_company;
-- drop database record_company;
use record_company;


create table bands(
	id int not null auto_increment,
	name varchar(255) not null,
    primary key(id)
);
create table albums(
	id int not null auto_increment,
    name varchar(255) not null,
    release_year int,
    band_id int not null,
    primary key(id),
    foreign key(band_id) references bands(id)
);


insert into bands(name)
values('Iron Maiden');
insert into bands(name)
values('Dece'),('Avenged Sevenfold'),('Anker');


select * from bands;
select * from bands limit 2;  					  -- only show first two
select  name  from bands; 
select id as 'ID' , name as 'Band Name'    -- change result grid columns name  
from bands;
select * from bands order by name;          -- 字首英文字母順序
select * from bands order by name desc; 
select * from bands order by name asc;


insert into albums(name,release_year,band_id)
values('the number of the beast',1985,1),
		  ('power slave',1984,1),
          ('nightmare',2018,2),
          ('nightmare',2010,3),
          ('test album',null,3);


select * from albums;
select name from albums;
select distinct name from albums;    			-- 不顯示重複的字

update albums
set release_year = 1982								-- 改變原本的資料 
where id = 1;
select * from albums;


select * from albums
where release_year < 2000;

select * from albums
where name like '%er%' ;                            -- ％可以代表所有字 

select * from albums
where name like '%er%' or band_id = 2 ;   

select * from albums
where release_year = 1984 and band_id = 1;

select * from albums
where release_year  between 2000 and 2018 ;

select * from albums
where release_year is  null;


delete from albums where id = 5 ;
select * from albums;

select * from bands;

select  * from bands
join albums on bands.id = albums.band_id;

select  * from albums
right join bands on bands.id = albums.band_id;

select avg(release_year) from albums;

select band_id , count(band_id) from albums
group by band_id;

select b.name as band_name , count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id;

select b.name as band_name , count(a.id) as num_albums
from bands as b
left join albums as a on b.id = a.band_id
group by b.id 
having num_albums = 1;

-- ref : https://youtu.be/p3qvj9hO_Bo