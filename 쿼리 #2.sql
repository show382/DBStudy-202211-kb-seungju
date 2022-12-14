INSERT INTO
	board_mst
VALUES	
	(0,'제목1','게시글 내용1',0,1),
	(0,'제목2','게시글 내용2',0,1),
	(0,'제목3','게시글 내용3',0,1),
	(0,'제목1','게시글 내용1',0,2),
	(0,'제목2','게시글 내용2',0,2),
	(0,'제목3','게시글 내용3',0,2),
	(0,'제목4','게시글 내용4',0,1),
	(0,'제목5','게시글 내용5',0,1),
	(0,'제목6','게시글 내용6',0,1),
	(0,'제목4','게시글 내용4',0,2),
	(0,'제목5','게시글 내용5',0,2),
	(0,'제목6','게시글 내용6',0,2);
	

	
SELECT
	*
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT writer_id,
		COUNT(1) AS writer_count 
		FROM board_mst 
		GROUP BY writer_id)wc 
		ON(wc.writer_id= bm.writer_id);

SET profiling = 1;
SHOW PROFILES;	
