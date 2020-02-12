--- “Операторы, фильтрация, сортировка и ограничение”

-- 1.1

DROP TABLE IF EXISTS users ;
CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT "Имя",
	birthday_at DATE,
	created_at VARCHAR(255),
	updated_at VARCHAR(255)
) COMMENT = 'Люди';
INSERT INTO users (name, birthday_at, created_at, updated_at) VALUES 
	('Дима', '1994-05-12', NOW(), NOW()), 
 	('Катя', '1989-01-04', NOW(), NOW()), 
 	('Маша', '1991-12-10', NOW(), NOW()), 
 	('Кирилл', '1987-02-07', NOW(), NOW());

-- 1.2 

ALTER TABLE users MODIFY created_at DATETIME;
ALTER TABLE users MODIFY updated_at DATETIME;

SELECT * FROM users;
DESC users;

-- 1.3

SELECT * FROM storehouses_products ORDER BY price DESC;

-- “Агрегация данных”

-- 2.1

SELECT FLOOR(AVG((TO_DAYS(NOW()) - TO_DAYS(birthday_at)) / 365.25)) AS age FROM users;

-- 2.2

SELECT DAYNAME(birthday_at) FROM users;

-- 2.3 

SELECT price FROM storehouses_products;
SELECT FLOOR(EXP(SUM(ln(price)))) FROM storehouses_products;






































