--영화 좋아요를 위한 테이블
create table mvlike (
	like_id varchar2(30) not null, 		--좋아요한 아이디
	like_title varchar2(50) not null	--좋아요한 영화명
);
drop table mvLike;