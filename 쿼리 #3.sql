SELECT
nm.title '주문번호',
nm.content AS '제품번호',
wm.name,
ni.img_name
FROM
	study_notice_mst AS nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notic_image ni ON(ni.notice_id = nm.id);
	
	
SELECT 
	*
FROM
	user_mst um
	LEFT OUTER JOIN user_dtl ud ON (ud.id = um.id);
	
SELECT
	*
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON(od.order_id=om.user_id)
	LEFT OUTER JOIN user_mst um ON(um.id = om.user_id);
	
SELECT
	*
FROM
	user_mst um
	LEFT OUTER JOIN order_mst om ON(om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id);
	
INSERT INTO
	subjcet_mst
VALUES
	(0,'java'),
	(0,'python'),
	(0,'c');
INSERT INTO
	student_mst
VALUES
	(0,'신경수'),
	(0,'고희주'),
	(0,'장건녕'),
	(0,'문승주');
INSERT INTO
	emp_mst
VALUES
	(0,'문성현'),
	(0,'윤대휘'),
	(0,'문자영'),
	(0,'정규민');
INSERT INTO
	status_mst
VALUES
	(0,'수강'),
	(0,'수료');
INSERT INTO
	course_mst
VALUES
	(0,1,1,1),
	(0,2,1,2),
	(0,3,1,2),
	(0,1,2,2),
	(0,3,2,1),
	(0,1,3,1),
	(0,1,4,2);
INSERT INTO
	student_dtl
VALUES
	(0,1),
	(0,2),
	(0,3),
	(0,4);
SELECT
	cm.id AS '순번',
	sm.name AS '과목명',
	stm.student_name AS '수강생명',
	em.emp_name AS '담담자명',
	statu.name AS '상태'
FROM
	course_mst cm
	LEFT OUTER JOIN subjcet_mst sm ON(sm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst stm ON(stm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst statu ON(statu.id = cm.status_id);
	
SELECT 
	sm.id AS '순번',
	sbm.name AS'과목명',
	sm.student_name AS '수상생명',
	em.emp_name AS '담담자명',
	stm.name AS '상태'
FROM
	student_mst sm
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN course_mst cm ON (cm.student_id = sm.id)
	LEFT OUTER JOIN subjcet_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id)
ORDER BY
	sm.id,
	sbm.id;db_study