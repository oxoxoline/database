DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название раздела', 
	UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

-- INSERT INTO catalogs VALUES (NULL, 'Процессоры');
-- INSERT INTO catalogs (id, name) VALUES (NULL ,'Мат.Платы');
-- INSERT INTO catalogs VALUES (DEFAULT, 'Видеокарты'); DEFAULT вместо NULL

INSERT IGNORE INTO catalogs VALUES
	(DEFAULT, 'Процессоры'),
	(DEFAULT, 'Мат.платы'),
	(DEFAULT, 'Видеокарты');

DROP TABLE IF EXISTS cat;
CREATE TABLE cat (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название раздела', 
	UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO
	cat
SELECT
	*
FROM 
	catalogs;

/*UPDATE
	catalogs 
SET 
	name = 'Процессоры (Intel)'
WHERE 
	name = 'Процессоры';*/

-- DELETE FROM catalogs; -- WHERE id > 1 LIMIT 1;



-- TRUNCATE catalogs; -- Удаляет catalogs и сбрасывает значение
-- DELETE FROM catalogs; Удаляет catalogs но не сбрасывает значение если они складываются
SELECT * FROM cat; 

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Имя покупателя',
	birthday_at DATE COMMENT 'Дата рождения',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
) COMMENT = 'Покупатели';

INSERT INTO users (id, name, birthday_at) VALUES (1, 'hello', '1979-01-27');
SELECT * FROM users;

DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Название',
	description TEXT COMMENT 'Описание',
	PRICE DECIMAL (11,2) COMMENT 'Цена',
	catalog_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	KEY index_of_catalog_id (catalog_id)
) COMMENT = 'Товарные позиции';

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
	id SERIAL PRIMARY KEY,
	user_id INT UNSIGNED,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	KEY index_of_user_id(user_id)
) COMMENT = 'Заказы';

DROP TABLE IF EXISTS orders_products;
CREATE TABLE orders_products (
	id SERIAL PRIMARY KEY,
	order_id INT UNSIGNED,
	product_it INT UNSIGNED,
	total INT UNSIGNED DEFAULT 1 COMMENT 'Колличество заказанных товарных позиций',
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Состав заказа';

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
	id SERIAL PRIMARY KEY,
	user_id INT UNSIGNED,
	product_id INT UNSIGNED, 
	discount FLOAT UNSIGNED COMMENT 'величина скидки от 0.0 до 1.0',
	started_at DATETIME,
	finished_at DATETIME,
	reated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	KEY index_of_user(user_id),
	KEY index_of_product(product_id)
) COMMENT = 'Скидки';

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT "Название",
	reated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
	id SERIAL PRIMARY KEY,
	storehouse_id INT UNSIGNED,
	product_id INT UNSIGNED,
	value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
	eated_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';




