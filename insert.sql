
/*
C(reate)R(ead)U(pdate)D(elete)

INSERT(추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
*/

INSERT INTO product_mst
/*(id,product_name,product_price) 생략가능*/
VALUES
(0,'스타벅스 블랙 머그컵2',15000),
(0,'스타벅스 화이트 머그컵2',20000),
(0,'스타벅스 블루 머그컵2',25000);

SELECT
	id,
	product_name,
	product_price
FROM
	product_mst;/*입력 순서대로 나온다*/
/*SET @CNT = 0;
UPDATE student_mst SET student_mst.id =@CNT:=@CNT+1;*/
INSERT INTO student_mst
VALUES
(0,"임지현",1,80),
(0,"신경수",2,90),
(0,"고희주",3,75),
(0,"문승주",1,85),
(0,"장건녕",2,95),
(0,"박수현",3,90),
(0,"황석민",1,80),
(0,"박준형",2,85),
(0,"이승아",3,90),
(0,"김수현",1,75);

SELECT
	`name`,
	id,
	student_year,
	score
FROM
	student_mst
WHERE
	student_year IN(1,2);/*student_year IN(안에) 포함되어 있는걸 출력해라 아닌건 not IN()*/
/*	`name` LIKE '%수%'
	AND `name` NOT LIKE '%수';*/
/*	not	student_year = 3;*/
/*	`name` LIKE '%수%';/*%(앞에 뭐가 오든 상관 없다)'주' 로 끝나라,%'수'%앞뒤로 '수'가 있으면 된다*/
SELECT
	`name`,
	id,
	student_year,
	score
FROM
	student_mst
WHERE
	score not BETWEEN 80 AND 90;
	
SELECT
	`name`,
	id,
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS NULL;