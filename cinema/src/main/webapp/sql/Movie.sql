create table movie (
   mv_num number primary key,          --영화코드
   mv_title varchar2(50) not null,      --제목
   mv_director varchar2(30) not null,   --감독
   mv_genre varchar2(50) not null,      --장르
   mv_grade varchar2(20) not null,      --관람등급
   mv_img varchar2(100) not null,      --영화포스터
   mv_content varchar2(1024) not null,   --영화줄거리
   mv_startdate date not null,         --개봉일자
   mv_time number not null            --상영시간(분)
);
select * from MOVIE;

--��ȭ ���� ���̺� 
drop table movie;

--ORA-02449: unique/primary keys in table referenced by foreign keys (0 rows affected) 뜨면 이렇게
-- drop table TABLE_NAME cascade constraints;
drop table movie cascade constraints;