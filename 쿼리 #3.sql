SELECT
nm.title,
nm.content,
wm.name,
ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notic_image ni ON(ni.notice_id = nm.id);