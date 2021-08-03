----------------------------------------회원
create table moviem(
	mid varchar2(30) primary key not null , --아이디
	pass varchar2(30) not null, 			-- 비번
	name varchar2(30) not null, 			-- 이름 
	birth date not null,       				-- 생년월일
  	gender varchar2(30) not null, 			-- 성별
	hp varchar2(30) not null,          		-- 휴대전화
	address varchar2(100) not null, 		-- 주소
	del varchar2(30) not null, 							-- 탈퇴여부	
	joindate date default sysdate not null
);
select * from moviem; 
drop table moviem;
delete from moviem;
insert into moviem(mid,pass,name,birth,gender,hp,address,del) 
values('admin','admin','admin','2021-03-01','xx','000-000-0000','주소-','n');

insert into moviem(mid,pass,name,birth,gender,hp,address,del) 
values('1','1','성명1','2021-03-01','xx','000-000-0000','주소-','n');
----------------------------------영화
create table movie (
	movieno Integer primary key, 	--영화아이디
	mname varchar2(50),				--제목
	mtime varchar2(50),				--상영시간
	director varchar2(50),			--감독
	actor varchar2(100),			--주연배우
	grade varchar2(50),				--관람등급
	picUrl varchar2(40),			--포스터
	playdate Date,					--개봉일
	story varchar2(1000),			--설명
	genre  varchar2(50),			--장르
	meanScore Integer				--평균평점			
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

select * from (select a.*, rowNum rn from(select * from movie where genre='액션' order by meanScore desc  )a) where rn BETWEEN 1 and 4


select * from movie where genre='액션' order by meanScore desc;

----------------------------------------- 상영관
create table cinema(
	cid number not null PRIMARY KEY,   --영화관 아이디 
	cname varchar2(50) not null,  --영화관 이름
	cadd varchar2(100) not null    --영화관 주소
);
create sequence cinema_seq start with 1 increment BY 1 maxvalue 10000;

delete cinema;
drop table cinema;
drop sequence cinema_seq;

select * from cinema;

insert into cinema(cid,cname,cadd) values(cinema_seq.nextval,'강남영화관','강남구');

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


-----------------------------------------------------고객센터
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

-----------------------------------------평점
create table bsBoard (
	boardno Integer not null,														--게시판번호
	movie_id Integer,																--영화아이디(fk)
	CONSTRAINT FK_bsBoard_movie FOREIGN KEY (movie_id) REFERENCES movie(movieno),
	starscore varchar2(30),															--평점
	moviem_id varchar2(30),															--회원아이디(fk)
	CONSTRAINT FK_bsBoard_moviem FOREIGN KEY (moviem_id) REFERENCES moviem(mid),	
	content varchar2(100),															--한줄평
	reportdate Date																	--등록일
);
create sequence bsBoard_seq start with 1 increment by 1;

drop table bsBoard;
drop sequence board_seq;

insert into bsBoard values(board_seq.nextval,9,5,'1','평점매기기',sysdate);
insert into bsBoard values(board_seq.nextval,13,1,'1','평점매기기',sysdate);
insert into bsBoard values(board_seq.nextval,14,4,'1','평점매기기',sysdate);
insert into bsBoard values(board_seq.nextval,24,2,'1','평점매기기',sysdate);

update bsbaord;
select * from all_objects where object_type = 'sequence';
select * from bsboard;

delete from bsboard where boardno=3

insert into bsboard	values(board_seq.nextval,2,
		2,2,sysdate)
		
select * from bsboard where movie_id=1;

-----------------------------상영일정
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

----------------------------------좌석
create table Seat(
	mid_sid varchar2(50) not null,  
	msno_sid number not null,
	sno varchar2(20) not null ,	-- 좌석번호
	resnum_sid number not null, --예매번호
	constraint PK_Seat primary key (mid_sid,msno_sid,sno),
	constraint FK_Seat_moviem foreign key (mid_sid) references moviem(mid),
	constraint FK_Seat_msno foreign key (msno_sid) references movieSchedule(msno),
	constraint FK_Seat_reserve foreign key (resnum_sid) references reserve(resnum)
);

select * from Seat;
drop table Seat;
delete from seat where mid_sid='a2' and msno_sid=1 and resnum_sid=23;
---------------------------------예매
create table Reserve(
	resnum number not null primary key, 
	price number not null ,  -- 가격
	numAdult number not null ,  -- 성인 예매수
	numTeenager number not null ,  -- 청소년 예매수
	numChild number not null ,  -- 어린이 예매수
	dayReserve date default sysdate not null, -- 예매일 
	mid_reid varchar2(50) not null,  -- 회원 id
	msno_reid number not null,   -- 상영일정 id
	CONSTRAINT FK_Reserve_moviem FOREIGN KEY (mid_reid) REFERENCES moviem(mid),
	CONSTRAINT FK_Reserve_msno FOREIGN KEY (msno_reid) REFERENCES movieSchedule(msno)
);

create sequence Reserve_seq start with 1;

select * from reserve;
drop table Reserve;
drop sequence Reserve_seq;

