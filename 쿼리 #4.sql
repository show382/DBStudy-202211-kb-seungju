SELECT
	product_name,
	COUNT(order_id) AS order_count,
	SUM(stock),
	MIN(stock),
	MAX(stock) AS max_stock,
	sum(stock) / COUNT(1),
	AVG(stock)
FROM
	order_mst
WHERE
	stock>50
GROUP BY
	product_name
HAVING 
	max_stock >49
ORDER BY
	order_count desc,
	SUM(stock) DESC
	LIMIT 0,2;
/*----------------------*/
SELECT 
	*
FROM
	order_mst
LIMIT 5,11;
	
SELECT 
	product_name,
	sum(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
/*---------------------------------------------*/
SELECT 
	product_name,
	sum(price * stock) AS total_price
FROM
	order_mst
GROUP BY
	product_name;
/*---------------------------------------------*/
SELECT 
	product_name,
	price * stock AS total_price
FROM
	order_mst;