create database song;
use song;
CREATE TABLE `song`.`song_details` (
  `s_id` INT NOT NULL,
  `s_name` VARCHAR(45) NOT NULL,
  `s_singer` VARCHAR(45) NOT NULL,
  `s_duration` TIME NOT NULL,
  `a_album` VARCHAR(45) NULL,
  `s_lang` VARCHAR(45) NOT NULL,
  `s_gener` VARCHAR(45) NULL,
  `s_likes` DOUBLE NULL,
  `s_price` FLOAT NOT NULL,
  `s_release_date` DATETIME NULL,
  `s_platform` VARCHAR(45) NULL,
  PRIMARY KEY (`s_id`));
  
  select*from song_details;
  
 SELECT count(*) AS NUMBEROFCOLUMNS FROM information_schema.columns
     WHERE table_name ='song_details';
  
  insert into song_details values (1,'beetelamhe','kk','00:05:05','train',
  'hindi','soul',100000.00,180.50,'1996-05-01 00:05:01','youtube');
   insert into song_details values (2,'tere mere galla','arijit','00:06:05','shersha',
  'hindi','romantic',250000.00,250.50,'2021-05-01 00:05:01','amazone'); 
  insert into song_details values (3,'raaz anketeri','kk','00:04:05','raaz',
  'hindi','romantic',350000.00,190.50,'2012-04-01 00:04:01','youtube');
   insert into song_details values (4,'anusutide','sonunigam','00:04:05','mungarumale',
  'kannada','soul',150000.00,500.50,'2005-01-01 00:05:42','jiomusic');
   insert into song_details values (5,'smackthat','akon','00:07:05','akon album',
  'English','rock',500000.00,650.50,'2000-08-01 00:06:01','Apple music');
   insert into song_details values (6,'babybaby','justine','00:07:05','beber',
  'english','pop',160000.00,200.50,'2015-04-01 00:05:01','amazone');
   insert into song_details values (7,'kuch kuch hota hai','udit narayan','00:04:05','kkhh',
  'hindi','roantic',500000.00,140.50,'1994-01-01 00:06:01','jiomusic');
   insert into song_details values (8,'gaaliyan','arijit','00:08:05','villan',
  'hindi','romantic',105500.00,400.50,'2015-08-01 00:07:01','apple music');
   insert into song_details values (9,'ringa ringa','krishna','00:07:05','aarya',
  'telugu','rock',800000.00,260.50,'2014-05-01 00:05:01','youtube');
   insert into song_details values (10,'dandalaya','kailash kair','00:02:05','bahubali',
  'telugu','soul',800000.00,650.50,'2019-05-01 00:05:01','amazone');
   insert into song_details values (11,'rightnow','akon','00:05:05','akon album',
  'English','pop',100000.00,550.50,'2008-08-01 00:05:01','apple music');
   insert into song_details values (12,'rait zara si','arijit','00:05:05','atrangi re',
  'hindi','soul',900000.00,550.50,'2021-05-01 00:05:01','youtube');
   insert into song_details values (13,'Maruvarthai ','dhanush','00:05:05',' Enai Nokki Payum Thota',
  'tamil','rock',300000.00,180.50,'2021-05-01 00:05:01','youtube');
   insert into song_details values (14,'Kannaana Kanney','dhanush','00:05:05',' Viswasam',
  'tamil','soul',400000.00,180.50,'2021-05-01 00:05:01','apple music');
   insert into song_details values (15,'agar tum saat ho','arihit','00:04:05','peeku',
  'hindi','roamtic',100000.00,180.50,'1996-05-01 00:05:01','youtube');
   insert into song_details values (16,'beetelamhe','kk','00:05:05','train',
  'hindi','soul',100000.00,180.50,'1996-05-01 00:05:01','youtube');
   insert into song_details values (17,'sach keh raha hai deewana','kk','00:05:05','rymed',
  'hindi','sad',550000.00,185.50,'2001-05-01 00:05:01','youtube');
   insert into song_details values (18,'rim jim','kk','00:05:05','kain',
  'hindi','soul',100000.00,180.50,'2021-05-01 00:05:01','youtube');
   insert into song_details values (19,'dil bechara','sonunigam','00:05:05','dil bechara',
  'hindi','soul',100000.00,180.50,'1996-05-01 00:05:01','amazone');
   insert into song_details values (20,'beetelamhe','kk','00:05:05','train',
  'hindi','soul',100000.00,180.50,'1996-05-01 00:05:01','youtube');

select s_name from song_details;
select s_name , s_singer from song_details;

select distinct s_name , s_singer from song_details;
select  *from song_details where s_price >200 ;
select s_name , s_singer,s_price from song_details where s_price > 200 ;

select distinct s_name from song_details where s_lang='hindi' and s_singer= 'kk';
select distinct s_name from song_details where s_lang='english' or s_singer= 'kk';
select  * from song_details order by s_id;
select  * from song_details order by s_id  desc;
SELECT s_name FROM song_details WHERE s_lang IS NULL;

update song_details set s_name = 'give me some sunsine',s_price=560.12 where s_id=20;
update song_details set s_price = 44.02 where s_singer='dhanush';
-- while updating where cause should be use otherwise it will update all recoreds 
delete from song_details where s_id=19;

select * from song_details where s_lang='hindi' limit 10;

select  max(s_price) as largestvalue  from song_details;
select  min(s_likes) as smallestvalue  from song_details;
select  avg(s_price) as averagevalue  from song_details;
select  sum(s_price) as averagevalue  from song_details;
select  avg(s_price) as averagevalue  from song_details;

select*from song_details where s_name like 'b%';-- search name start with 1st char
select*from song_details where s_name like 'b%e';-- search name start&end with char
select*from song_details where s_name like '%a';-- search name start with 1st char
select*from song_details where s_name like '__r%';-- search name start with 1st char
select*from song_details where s_name like 'g_%';-- search name start with 1st char
select*from song_details where s_name like 'g%';-- search name start with 1st char

select*from song_details where s_singer like 'a_i__t';
select*from song_details where s_lang ='hindi' or s_lang='telugu' or s_lang='english';

select*from song_details where s_price>150 and s_price<=250;
select*from song_details where s_price between 150 and 250;

select*from song_details where s_lang in('hindi','telugu','english');
select count(*) from song_details;
select*from song_details;

select count(s_name)  as noofsongs, year(s_release_date) 
from song_details where year(s_release_date) =2021;
select count(s_name)  as noofsongs, year(s_release_date) 
from song_details group by (s_release_date) ;

select s_id as song_id, s_singer as singer_name, s_name as song_name from song_details;

select count(s_singer) as singedsong,s_singer from song_details group by s_singer;

select count(s_name)  as noofsongs,s_lang from song_details group by s_lang;
select count(s_name)  as noofsongs,s_lang,s_singer
 from song_details group by s_name;
 update song_details set s_release_date = '2021-05-01 00:05:01' where s_id=5;
 select count(s_name)  as noofsongs,s_singer from song_details group by s_name having noofsongs>5;
 
select count(s_name)  as noofsongs,s_gener from song_details group by s_singer ;
select count(s_name) as noofsongs,s_singer,s_lang from song_details 
where s_lang in('hindi','kannada','english') group by s_lang having noofsongs>2;

select max(s_likes) as maxlikes, s_gener  from song_details group by s_gener;

select max(s_likes) as maxlikes from song_details;
select min(s_likes) as maxlikes from song_details;

select sum(s_price) as totalprice,s_platform from song_details group by s_platform;

select avg (s_likes) as avglikes, s_singer from song_details 
where s_name in('give me some sunshine','tere mere galla','beetelamhe') group by s_singer;

select*from song_details where s_likes= (select max(s_likes) from song_details);-- max highest likes

select*from song_details where s_likes =(select max(s_likes)
from song_details where s_likes < (select max(s_likes) from song_details)); -- secound hihest like

select*from song_details where s_likes =
(select max(s_likes) from song_details where s_likes < (select max(s_likes)-- third highest
 from song_details where s_likes <(select max(s_likes) from song_details)));
 
 

select*from song_details where s_likes= (select max(s_likes)
from song_details) or s_likes = (select max(s_likes) from song_details
 where s_likes < (select max(s_likes) from song_details));

select*from song_details;

 
update song_details set s_gener = 'romantic' where s_id=7;
update song_details set s_singer = 'arijit' where s_id=15;
update song_details set s_likes = 210000 where s_id =20;

select max(s_likes)as maxlikes,s_platform from song_details group by s_platform;

select * from song_details where s_likes in (select max(s_likes) from song_details group by s_platform);	

select max(s_price) ,s_singer from song_details group by s_singer having max(s_price)>450;
select * from song_details where s_price in(select max(s_price)from song_details
group by s_singer having max(s_price)>250);

update song_details set s_name="phele nazar", s_platform ='jio music' where s_id=12;

commit;  -- save data permanently sfter commit no rollback

update song_details set s_likes =15000 where s_id=12;


savepoint S; -- before rollback set the certain point rollback works 
rollback;

update songdetails set s_platform='apple music' where s_id=12;
savepoint b;

rollback; -- undo the update  at b used only for dml commands ,update,delete,insert;

select user();
select user,host from mysql.user;
create user 'tempuser'@'localhost' identified by 'tempuser@123';
grant select,create on song.song_details to 'tempuser'@'localhost';

show grants for 'tempuser'@'localhost';

revoke create on song.song_details from 'tempuser'@'localhost';





