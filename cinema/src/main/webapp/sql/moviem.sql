create table moviem(
	mnum number not null,
	mid varchar2(30) primary key not null , 
	pass varchar2(30) not null, 			
	name varchar2(30) not null, 			
	birth date not null,       				
  	gender varchar2(30) not null, 			
	hp varchar2(30) not null,          		
	address varchar2(100) not null, 		
	del varchar2(30) not null, 				
	joindate date default sysdate not null
);

select * from moviem; 
drop table moviem;
delete from moviem;
insert into moviem(mnum,mid,pass,name,birth,gender,hp,address,del) 
values(1,'admin','admin','admin','2021-03-01','xx','000-000-0000','dd','n');