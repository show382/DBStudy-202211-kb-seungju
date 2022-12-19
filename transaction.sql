/*
	TCL
    1.	COMMIT		- 트랜잭션 확정
    2.	ROLLBACK	- 되돌리기
    3.	SAVEPOINT	- 중간지점 저장
*/
set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transaction_study;

create table `transaction_study`.`epm_mst` (
	`id` int not null auto_increment,
    `name` varchar(15) default null,
    primary key (`id`)
);

select @@autocommit;

start transaction;
savepoint p1;
insert into emp_mst
values
	(0,'문승주'),
	(0,'신경수'),
	(0,'고희주'),
	(0,'장건녕');
    


select * from emp_mst;

savepoint p2;

update emp_mst
set
	`name` = '문승주'
where
	id = 2;
rollback to p2;
select * from emp_mst;
rollback to p1;/*to p1 을 안붙이면 처음으로 돌아간다*/

select * from emp_mst;

commit;order_mst