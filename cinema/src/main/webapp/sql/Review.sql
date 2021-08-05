create table review_mv (
	rv_num number primary key,
	rv_mv_num number not null,
	rv_title varchar2(50) not null,		
	rv_id varchar2(30) not null,			
	rv_content varchar2(1024) not null,	
	rv_ev number not null,
	rv_date date not null			
);

drop table review_mv;