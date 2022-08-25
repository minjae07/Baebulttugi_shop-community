--create table board(
--num NUMBER primary key ,
--writer varchar2(10) not null, --작성자 id
--email1 varchar2(30), -- 이메일1
--email2 varchar2(30), -- 이메일2
--subject varchar2(50) not null,-- 글제목
--passwd varchar2(12) not null,--비밀번호
--reg_date timestamp(6) not null,--작성일
--readcount NUMBER default 0,--조회수
--ref NUMBER not null,-- 글 그룹 번호
--re_step NUMBER not null, -- 같은 그룹에서 글 출력 순서
--re_level NUMBER not null, -- 답글 레벨
--content varchar2(4000) not null -- 글 내용
--);
--
--CREATE SEQUENCE board_seq;
--
--
--drop table board


create table qboard(
qnum NUMBER primary key ,
qwriter varchar2(30) not null, --작성자 id
qemail1 varchar2(30), -- 이메일1
qemail2 varchar2(30), -- 이메일2
qsubject varchar2(50) not null,-- 글제목
qpasswd varchar2(15) not null,--비밀번호
qreg_date timestamp(6) not null,--작성일
qreadcount NUMBER default 0,--조회수
qref NUMBER not null,-- 글 그룹 번호
qre_step NUMBER not null, -- 같은 그룹에서 글 출력 순서
qre_level NUMBER not null, -- 답글 레벨
qcontent varchar2(4000) not null -- 글 내용
);

CREATE SEQUENCE qboard_seq;


drop table qboard

alter table qboard 
modify writer varchar2(20);
