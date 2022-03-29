create table member(
	id varchar(50) not null primary key,
	pwd varchar(16) not null,
	name varchar(10) not null,
	reg_date datetime not null
);

desc member;

create table test(
	num_id int not null primary key auto_increment,
	title varchar(50) not null,
	content text not null
);
desc test;

alter table member
	add (
	address varchar(100) not null,
	tel varchar(20) not null	
	);

DROP table test;
show tables;

SELECT *  FROM member;

insert into member(id,pwd,name,reg_date,address,tel)
			values("BDH@naver.com","123456789","도라지",now(),"서울시","010-1111-1111");
insert into member(id,pwd,name,reg_date,address,tel)
			values("KKK@naver.com","987654321","도토리",now(),"경기도","010-2222-2222");