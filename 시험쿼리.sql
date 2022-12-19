INSERT INTO 
	delivery_mst
VALUES
	(0,'대한통운','김준일','부산광역시 연제구 중앙대로 1001 부산광역시청','김춘식','010-8282-5353','안전하게 배송해주세요.')delivery_mstdelivery_mstdelivery_mst;
	
SELECT
	*
FROM
	delivery_mst;

INSERT INTO
	student_mst
VALUES
	(0,'김춘식'),
	(0,'손흥민');

INSERT INTO
	class_mst
VALUES
	(0,'컴퓨터 구조'),
	(0,'데이터베이스'),
	(0,'인공지능');

INSERT INTO
	grade_mst
VALUES 
	(0,1,1,95),
	(0,2,1,84),
	(0,1,2,89),
	(0,2,2,92),
	(0,1,3,100),
	(0,2,3,88);
	
SELECT
	gm.id AS '순번',
	sm.id AS '학번',
	sm.student_name AS '이름',
	cm.id AS '과목번호',
	cm.class_name AS '과목이름',
	gm.grade AS '점수'
FROM
	grade_mst gm
	LEFT OUTER JOIN student_mst sm ON(sm.id=gm.student_id)
	LEFT OUTER JOIN class_mst cm ON(cm.id=gm.class_id)
WHERE
	gm.class_id <3;
	
INSERT INTO
	`상품`
VALUES
	(0,'딸기사탕',50),
	(0,'누룽지사탕',100);
set autocommit = 0;
select @@autocommit;
start TRANSACTION;
insert INTO
	`상품`
VALUES          
	(0,'오렌지사탕',20);
savepoint p1;
UPDATE 
	`상품`
SET
	`수량` =200
WHERE
	`상품코드`=2;
rollback TO p1;
UPDATE 
	`상품`
SET
	`수량` =200
WHERE
	`상품코드`=1;
DELETE
FROM
 `상품`
WHERE
 `상품코드`=2;
 COMMIT;
 
INSERT into
 	`학생`
VALUES
	(200130001,'홍길동','컴퓨터공학과'),
	(200130002,'김철수','전자공학과');
select * from `학생`;

create index STUDENT_CODE_INDEX on `학생`(`학번`);
show index FROM `학생`;

create view USER_VIEW
as
SELECT
	ID,
	USERNAME,
	PASSWORD,
	NAME,
	EMAIL
FROM
	user_mst
Where
    ID BETWEEN 1 AND 200;
SELECT
	ID,
	USERNAME AS 'a',
	PASSWORD,
	NAME,
	EMAIL
from
	USER_VIEW;
    
    
show index FROM `학생`;

select
	*
from
	USER_VIEW;
	