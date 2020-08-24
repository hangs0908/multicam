create table userinfo (
	userid varchar2(15) primary key,
	username varchar2(20),
	userpwd varchar2(10),
	email varchar2(50),
	phone varchar2(15),
	address varchar2(100),
	userdate date default sysdate
);


create table board
(
    boardno   number(10) primary key,
    title     varchar2(100)  not null,
    content   varchar2(4000) not null,
    writer varchar2(15) references userinfo(userid),
    boarddate date   default sysdate,
    viewcount   number(10)
)

desc userinfo;
select * from userinfo;

insert into userinfo values ('dkdl8888', 'T��e����I','erer!23232','ii333@daum.net', '010-2323-4444' ,'����� ������');
insert into userinfo values ('sldms1221', '�����', 'tlfj@131','like444@daum.net', '010-1111-4444' ,'����� ���ϱ�');
insert into userinfo values ('boom9898', '��̿���','anjgka123!', 'love2388@daum.net', '010-2323-4455' ,'����� ���α�');
insert into userinfo values ('gma3333', '�Ǵ��ۻ�', 'alal#999','dktk@naver.com', '010-9797-3434' ,'���� ������');
insert into userinfo values ('hmmm22', 'simonD', 'dkssud@333','simon@naver.com', '010-5555-3543' ,'��� ������');
insert into userinfo values ('zzizon52', 'Esens', 'qkqh9090!@', 'esens@naver.com', '' ,'�λ� �ؿ�뱸');
insert into userinfo values ('dfewww22', '�мǿ�', 'yumyum1!', 'king@yahoo.com', '010-3425-4232' ,'����� ������');
insert into userinfo values ('hanana8944', 'S2����õ��S2','sjssjs9*', 'angel@naver.com', '010-5252-2221' ,'�λ� ����');
insert into userinfo values ('coding554', 'zl���ڵ�', 'nyo@3322','coder@naver.com', '010-6875-3423' ,'���� ���۱�');
insert into userinfo values ('pizzalover0101', 'ġŲ�������ڰ���', 'pilot3#', 'pizza@naver.com', '010-5555-1111' ,'�λ� ����');

select * from userinfo

