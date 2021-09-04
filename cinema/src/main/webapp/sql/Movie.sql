create table movie (
   mv_num number primary key,      
   mv_title varchar2(50) not null,      
   mv_director varchar2(30) not null,  
   mv_genre varchar2(50) not null,     
   mv_grade varchar2(20) not null,     
   mv_img varchar2(100) not null,    
   mv_content varchar2(1024) not null,   
   mv_startdate date not null,       
   mv_time number not null,
   mv_ev number not null,
);
select * from MOVIE;

drop table movie;

drop table movie cascade constraints;

alter table movie add (mv_ev number);

update movie set mv_ev=0; 