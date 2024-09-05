use car_dekho;
select * from cartable order by mileage desc;
show tables;
select count(*) from cartable;
rename table cardekho to cartable;
select distinct(fuel) from cartable;#petrol,diesel,electric,cng,lpg
set sql_safe_updates=0;
update cartable set transmission="Manual" where transmission=" manual";
select distinct(transmission) from cartable;
 update cartable set name=trim(name);
 select * from cartable order by name;
 select fuel, count(*) as num from cartable  group by fuel order by num desc;
 select count(distinct(name)) from cartable;
 select distinct(substring_index(name," ",1)) from cartable;
 alter table cartable add column company varchar(200);
 alter table cartable modify column company varchar(200) first;
 update cartable set company=substring_index(name," ",1);
 update cartable set torque=trim(torque);
 describe cartable;
 select * from cartable limit 7885,1;
 delete from cartable where name="maruti omni cng";
 select * from cartable where name="maruti omni cng";
 update cartable set torque=substring_index(torque,".",1); 
 alter table cartable modify torque int;
 select company,avg(selling_price),min(selling_price),max(selling_price) from cartable group by company order by avg(selling_price);
 select company,max(engine),min(engine),avg(engine) from cartable group by company order by max(engine) ;
 select fuel,avg(mileage),max(mileage),min(mileage) from cartable group by fuel order by avg(mileage) ;
 select name,max(selling_price) from cartable group by name  order by max(selling_price);
 select company,avg(km_driven),min(km_driven),max(km_driven) from cartable group by company order by min(km_driven) ;
 update cartable set max_power=substring_index(max_power,"b",1);
 alter table cartable modify torque float;
 select * from cartable limit 6228,1;
 delete from cartable where name="maruti omni cng";
 select * from cartable where name="maruti omni cng";
 update cartable set torque=substring_index(torque," ",1);
 select  mileage,case when mileage<10 then "low mileage"
 when mileage>=10 and mileage<=19 then "average mileage"
 else "High mileage" end as mileage_category from cartable;
 select max(km_driven) from cartable;
 alter table cartable add column km_driven_category varchar(50);
 update cartable set km_driven_category=case when km_driven<10000 then "less than 10k"
 when km_driven>=10000 and km_driven<=10000 then "between 10k and 100k"
 else "Above 100k" end;
 alter table cartable add column mileage_category varchar(50);
 update cartable set mileage_category=case when mileage<10 then "low mileage"
 when mileage>=10 and mileage<=19 then "average mileage"
 else "High mileage" end;
 delete from cartable where mileage=0;
 select count(*) from cartable where mileage_category="average mileage";
 select mileage_category,avg(selling_price) from cartable group by mileage_category;
 select * from cartable;
 select avg(selling_price) from cartable;
 select name,selling_price,case when selling_price<600000 then "low price"
 when selling_price>=600000 and selling_price<=4000000 then "medium price"
 else "High price" end as price_category from cartable;
 alter table cartable add column price_category varchar(50);
 update cartable set price_category=case when selling_price<600000 then "low price"
 when selling_price>=600000 and selling_price<=4000000 then "medium price"
 else "High price" end;
 select * from cartable where price_category="low price";
 select price_category,count(*) from cartable where fuel="electric"  group by price_category;
 select owner,  count(owner) as count from cartable group by owner order by count(owner) desc;
 select company,selling_price,km_driven,price_category from cartable order by km_driven ;
 select selling_price,km_driven from cartable where company="maruti" order by km_driven;
 select * from cartable where company="maruti" order by km_driven;
 select * from cartable order by selling_price desc;
 select count(*) from cartable where price_category="low price";
 select name ,km_driven from cartable order by km_driven;
 select owner,count(owner) from cartable group by owner order by count(owner) desc;
 select * from cartable where fuel="electric";
 select avg(year) from cartable;
 select avg(mileage) from cartable;
 select year,count((year)) from cartable group by year order by count(year) ;
 select * from cartable where company="maruti" and selling_price=29999;
 select min(km_driven) from cartable;
 select max(selling_price) from cartable;
 select max(year) from cartable;
select max(km_driven) from cartable;
select count(*) from cartable;
describe cartable;
delete from cartable where km_driven=1500000;
set sql_safe_updates=0;
select * from cartable order by max_power desc ; 
select mileage,selling_price,mileage_category,price_category from cartable ;
select min(year) from cartable;
select count(*) as cnt from cartable group by company,name,year,selling_price,km_driven,fuel,seller_type,transmission,owner,seats,engine,mileage,max_power,torque order by cnt desc ;
select company,name,year,selling_price,km_driven,fuel,seller_type,transmission,owner,seats,engine,mileage,max_power,torque,count(*) from cartable group by company,name,year,selling_price,km_driven,fuel,seller_type,transmission,owner,seats,engine,mileage,max_power,torque having count(*)>1 order by count(*) desc;
 
create temporary table new3 select company,name,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,km_driven_category,mileage_category,price_category from cartable group by company,name,year,selling_price,km_driven,fuel,seller_type,transmission,owner,mileage,engine,max_power,torque,seats,km_driven_category,mileage_category,price_category having count(*)>1;
 select * from new3;
 delete from cartable;
 insert into cartable select * from new;
 select count(*) from cartable;
create temporary table new select distinct * from cartable;
select count(*) from cartable;
select * from new where fuel="electric";

 drop database car_dekho;
 select fuel,count(*) from cartable group by fuel order by count(*) desc; 
 select avg(km_driven) from cartable;
 create database car_dekho;
 update cartable set torque=trim(torque);
 select count(*) from cartable order by mileage desc;
 delete from cartable where km_driven=1500000;
 select avg(km_driven) from cartable;
 select seats,count(seats) from cartable group by seats order by count(seats) desc;
 select avg(mileage) from cartable;
 
 