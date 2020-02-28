-- 1. Составьте список пользователей users, которые осуществили хотя бы 
-- один заказ orders в интернет магазине.

SELECT u.name, o.user_id 
	FROM users AS u
		JOIN orders AS o
			ON u.id = o.user_id;
		
-- 2. Выведите список товаров products и разделов catalogs, 
-- который соответствует товару.

SELECT p.name, p.catalog_id, c.name
	FROM catalogs AS c 
		JOIN products AS p
			ON c.id = p.catalog_id;
	
