create table movie (
	mv_title varchar2(50) primary key,	--����
	mv_director varchar2(30) not null,	--����
	mv_genre varchar2(50) not null,		--�帣
	mv_grade varchar2(20) not null,		--�������
	mv_img varchar2(100) not null,		--��ȭ������
	mv_content varchar2(1024) not null,	--��ȭ�ٰŸ�
	mv_startdate date not null,			--��������
	mv_time number not null				--�󿵽ð�(��)
);
--��ȭ ���� ���̺� 
drop table movie;