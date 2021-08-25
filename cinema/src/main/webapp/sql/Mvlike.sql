--영화 좋아요를 위한 테이블
create table mvlike (
	like_id varchar2(30) not null, --좋아요한 아이디
	like_mv_num number not null,	--좋아요한 영화번호
	like_id_num number not null --좋아요한 아이디의 num (java 한글 안넘어가는 부분떄문에 만듬)
);
drop table mvlike;