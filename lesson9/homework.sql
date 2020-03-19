

/* 2) Создайте представление, которое выводит название name товарной 
позиции из таблицы products и соответствующее название каталога name из 
таблицы catalogs.*/

DROP VIEW IF EXISTS prodcatalog;
CREATE OR REPLACE VIEW prodcatalog AS 
	SELECT products.name AS products_name, 
		   catalogs.name AS catalogs_name 
				FROM products 
					AS products
					JOIN catalogs 
					AS catalogs 
						ON products.catalog_id = catalogs.id;

SELECT * FROM prodcatalog;

-- С остальным не разобрался





























