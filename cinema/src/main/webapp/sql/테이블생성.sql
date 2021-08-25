----------------------------------------ȸ��
create table moviem(
	mid varchar2(30) primary key not null , --���̵�
	pass varchar2(30) not null, 			-- ���
	name varchar2(30) not null, 			-- �̸� 
	birth date not null,       				-- �������
  	gender varchar2(30) not null, 			-- ����
	hp varchar2(30) not null,          		-- �޴���ȭ
	address varchar2(100) not null, 		-- �ּ�
	del varchar2(30) not null, 							-- Ż�𿩺�	
	joindate date default sysdate not null
);
select * from moviem; 
drop table moviem;
delete from moviem;
insert into moviem(mid,pass,name,birth,gender,hp,address,del) 
values('admin','admin','admin','2021-03-01','xx','000-000-0000','dd','n');

insert into moviem(mid,pass,name,birth,gender,hp,address,del) 
values('1','1','����1','2021-03-01','xx','000-000-0000','�ּ�-','n');
----------------------------------��ȭ
create table movie (
	movieno Integer primary key, 	--��ȭ���̵�
	mname varchar2(50),				--����
	mtime varchar2(50),				--�󿵽ð�
	director varchar2(50),			--����
	actor varchar2(100),			--�ֿ����
	grade varchar2(50),				--�������
	picUrl varchar2(40),			--������
	playdate Date,					--������
	story varchar2(1000),			--����
	genre  varchar2(50),			--�帣
	meanScore Integer				--�������			
);


create sequence movie_seq start with 1 increment by 1;

select * from movie;

delete table movie;
drop table movie;

update movie set mname=3,mtime=3,director=3,actor=3,
			grade=3,story=3,meanScore=3 where movieno=1;
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);
insert into movie values(movie_seq.nextval,222,333,444,555,666,777,sysdate,888,999);


SELECT movieno_seq.CURRVAL FROM DUAL;

select * from (select rowNum rn from(select * from movie order by playdate desc,movieno)) where rn BETWEEN 1 and 4

DROP SEQUENCE movie_seq;


select * from (select a.*, rowNum rn from(select * from movie where genre=#{genre} order by meanScore desc  )a) where rn BETWEEN 1 and 4

select * from (select a.*, rowNum rn from(select * from movie where genre='�׼�' order by meanScore desc  )a) where rn BETWEEN 1 and 4


select * from movie where genre='�׼�' order by meanScore desc;

----------------------------------------- �󿵰�
create table cinema(
	cid number not null PRIMARY KEY,   --��ȭ�� ���̵� 
	cname varchar2(50) not null,  --��ȭ�� �̸�
	cadd varchar2(100) not null    --��ȭ�� �ּ�
);
create sequence cinema_seq start with 1 increment BY 1 maxvalue 10000;

delete cinema;
drop table cinema;
drop sequence cinema_seq;

select * from cinema;

insert into cinema(cid,cname,cadd) values(cinema_seq.nextval,'������ȭ��','������');

create table svcboard(
	num number not null PRIMARY KEY,
	writer varchar2(50) not null,
	subject varchar2(50) not null,
	content varchar2(100) not null,
	email varchar2(50) not null,
	readcount number not null,
	passwd varchar2(50) not null,
	ref number not null,
	re_step number not null,
	re_level number not null,
	ip varchar2(50) not null,
	reg_date Date not null,
	del varchar2(10) not null
);

select * from svcboard;


-----------------------------------------------------������
create table svcboard(
	num number not null PRIMARY KEY,
	writer varchar2(50) not null,
	subject varchar2(50) not null,
	content varchar2(100) not null,
	email varchar2(50) not null,
	readcount number not null,
	passwd varchar2(50) not null,
	ref number not null,
	re_step number not null,
	re_level number not null,
	ip varchar2(50) not null,
	reg_date Date not null,
	del varchar2(10) not null
);

select * from svcboard;
drop table svcboard;

-----------------------------------------����
create table bsBoard (
	boardno Integer not null,														--�Խ��ǹ�ȣ
	movie_id Integer,																--��ȭ���̵�(fk)
	CONSTRAINT FK_bsBoard_movie FOREIGN KEY (movie_id) REFERENCES movie(movieno),
	starscore varchar2(30),															--����
	moviem_id varchar2(30),															--ȸ�����̵�(fk)
	CONSTRAINT FK_bsBoard_moviem FOREIGN KEY (moviem_id) REFERENCES moviem(mid),	
	content varchar2(100),															--������
	reportdate Date																	--�����
);
create sequence bsBoard_seq start with 1 increment by 1;

drop table bsBoard;
drop sequence board_seq;

insert into bsBoard values(board_seq.nextval,9,5,'1','�����ű��',sysdate);
insert into bsBoard values(board_seq.nextval,13,1,'1','�����ű��',sysdate);
insert into bsBoard values(board_seq.nextval,14,4,'1','�����ű��',sysdate);
insert into bsBoard values(board_seq.nextval,24,2,'1','�����ű��',sysdate);

update bsbaord;
select * from all_objects where object_type = 'sequence';
select * from bsboard;

delete from bsboard where boardno=3

insert into bsboard	values(board_seq.nextval,2,
		2,2,sysdate)
		
select * from bsboard where movie_id=1;

-----------------------------������
create table movieSchedule (
	msno int  primary key,
	startTime varchar2(30),
	endTime varchar2(30),
	day Date,
	startDay Date,
	endDay Date,
	times int,
	cinema_id int,
	movie_id int, 
	CONSTRAINT FK_movieSchedule_cinema FOREIGN KEY (cinema_id) REFERENCES cinema(cid),
	CONSTRAINT FK_movieSchedule_movie FOREIGN KEY (movie_id) REFERENCES movie(movieno)
);

drop table movieSchedule;

select * from movieSchedule;

select * from movieSchedule order by day, startTime; 

insert into movieSchedule values(1, '01:04', '02:04', '2021-04-10', '2021-03-01', '2021-04-30', 1, 1, 1 );
insert into movieSchedule values(2, '02:04', '03:04', '2021-04-10', '2021-03-01', '2021-04-30', 2, 1, 1 );
insert into movieSchedule values(3, '03:04', '04:04', '2021-04-10', '2021-03-01', '2021-04-30', 3, 1, 1 );
insert into movieSchedule values(4, '04:04', '05:04', '2021-04-10', '2021-03-01', '2021-04-30', 4, 1, 1 );
insert into movieSchedule values(5, '05:04', '06:04', '2021-04-10', '2021-03-01', '2021-04-30', 5, 1, 1 );
insert into movieSchedule values(6, '01:04', '02:04', '2021-04-12', '2021-03-01', '2021-04-30', 1, 1, 1 );
insert into movieSchedule values(7, '02:04', '03:04', '2021-04-12', '2021-03-01', '2021-04-30', 2, 1, 1 );
insert into movieSchedule values(8, '03:04', '04:04', '2021-04-12', '2021-03-01', '2021-04-30', 3, 1, 1 );
insert into movieSchedule values(9, '04:04', '05:04', '2021-04-12', '2021-03-01', '2021-04-30', 4, 1, 1 );
insert into movieSchedule values(10, '05:04', '06:04', '2021-04-12', '2021-03-01', '2021-04-30', 5, 1, 1 );
insert into movieSchedule values(11, '12:04', '13:04', '2021-04-11', '2021-03-01', '2021-04-30', 1, 1, 1 );
insert into movieSchedule values(12, '13:04', '14:04', '2021-04-11', '2021-03-01', '2021-04-30', 2, 1, 1 );
insert into movieSchedule values(13, '14:04', '15:04', '2021-04-11', '2021-03-01', '2021-04-30', 3, 1, 1 );
insert into movieSchedule values(14, '15:04', '16:04', '2021-04-11', '2021-03-01', '2021-04-30', 4, 1, 1 );
insert into movieSchedule values(15, '16:04', '17:04', '2021-04-11', '2021-03-01', '2021-04-30', 5, 1, 1 );


insert into movieSchedule values(16, '12:04', '13:04', '2021-04-10', '2021-03-01', '2021-04-30', 1, 2, 1 );
insert into movieSchedule values(17, '13:04', '14:04', '2021-04-10', '2021-03-01', '2021-04-30', 2, 2, 1 );
insert into movieSchedule values(18, '14:04', '15:04', '2021-04-11', '2021-03-01', '2021-04-30', 3, 2, 1 );
insert into movieSchedule values(19, '15:04', '16:04', '2021-04-11', '2021-03-01', '2021-04-30', 4, 2, 1 );
insert into movieSchedule values(20, '16:04', '17:04', '2021-04-12', '2021-03-01', '2021-04-30', 5, 2, 1 );

insert into movieSchedule values(21, '12:04', '13:04', '2021-04-10', '2021-03-01', '2021-04-30', 1, 1, 2 );
insert into movieSchedule values(22, '13:04', '14:04', '2021-04-11', '2021-03-01', '2021-04-30', 2, 1, 2 );
insert into movieSchedule values(23, '14:04', '15:04', '2021-04-11', '2021-03-01', '2021-04-30', 3, 1, 2 );
insert into movieSchedule values(24, '15:04', '16:04', '2021-04-11', '2021-03-01', '2021-04-30', 4, 1, 2 );
insert into movieSchedule values(25, '16:04', '17:04', '2021-04-12', '2021-03-01', '2021-04-30', 5, 1, 2 );

----------------------------------�¼�
create table Seat(
	mid_sid varchar2(50) not null,  
	msno_sid number not null,
	sno varchar2(20) not null ,	-- �¼���ȣ
	resnum_sid number not null, --���Ź�ȣ
	constraint PK_Seat primary key (mid_sid,msno_sid,sno),
	constraint FK_Seat_moviem foreign key (mid_sid) references moviem(mid),
	constraint FK_Seat_msno foreign key (msno_sid) references movieSchedule(msno),
	constraint FK_Seat_reserve foreign key (resnum_sid) references reserve(resnum)
);

select * from Seat;
drop table Seat;
delete from seat where mid_sid='a2' and msno_sid=1 and resnum_sid=23;
---------------------------------����
create table Reserve(
	resnum number not null primary key, 
	price number not null ,  -- ����
	numAdult number not null ,  -- ���� ���ż�
	numTeenager number not null ,  -- û�ҳ� ���ż�
	numChild number not null ,  -- ��� ���ż�
	dayReserve date default sysdate not null, -- ������ 
	mid_reid varchar2(50) not null,  -- ȸ�� id
	msno_reid number not null,   -- ������ id
	CONSTRAINT FK_Reserve_moviem FOREIGN KEY (mid_reid) REFERENCES moviem(mid),
	CONSTRAINT FK_Reserve_msno FOREIGN KEY (msno_reid) REFERENCES movieSchedule(msno)
);

create sequence Reserve_seq start with 1;

select * from reserve;
drop table Reserve;
drop sequence Reserve_seq;

