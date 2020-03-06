-- Урок 8
-- Сложные запросы, JOIN
-- Внешние ключи


-- Разбор ДЗ к уроку 6
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- Смотрим типы для лайков
SELECT * FROM target_types;

-- Выбираем профили с сортировкой по дате рождения
SELECT * FROM profiles ORDER BY birthdate DESC LIMIT 10;

-- Выбираем лайки по типу пользователь
SELECT * FROM likes WHERE target_type_id = 2;

-- Объединяем, но так не работает
SELECT * FROM likes WHERE target_type_id = 2
  AND target_id IN (
    SELECT user_id FROM profiles ORDER BY birthdate DESC LIMIT 10
  );

-- Идём обходным путём
SELECT target_id, COUNT(*) FROM likes 
  WHERE target_type_id = 2
    AND target_id IN (SELECT * FROM (
      SELECT user_id FROM profiles ORDER BY birthdate DESC LIMIT 10
    ) AS sorted_profiles ) 
    GROUP BY target_id;

-- Суммируем для всех пользователей
SELECT SUM(likes_per_user) AS likes_total FROM ( 
  SELECT COUNT(*) AS likes_per_user 
    FROM likes 
      WHERE target_type_id = 2
        AND target_id IN (
          SELECT * FROM (
            SELECT user_id FROM profiles ORDER BY birthdate DESC LIMIT 10
          ) AS sorted_profiles 
        ) 
      GROUP BY target_id
) AS counted_likes;

-- либо другой вариант
SELECT 
  (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
  FROM profiles 
  ORDER BY birthdate 
  DESC LIMIT 10;

SELECT SUM(likes_total) FROM  
  (SELECT 
    (SELECT COUNT(*) FROM likes WHERE target_id = profiles.user_id AND target_type_id = 2) AS likes_total  
    FROM profiles 
    ORDER BY birthdate 
    DESC LIMIT 10) AS user_likes
;  

-- третий вариант
SELECT 
		user_id,
		(SELECT 
			birthdate 
		FROM 
			profiles 
			WHERE user_id = likes.target_id) AS birthdate ,  
		COUNT(*) as likes
	FROM 
		likes 
		  WHERE target_type_id = 2
			GROUP BY user_id
			ORDER BY birthdate DESC
			LIMIT 10;

SELECT SUM(likes) FROM
  (SELECT 
		user_id,
		(SELECT 
			birthdate 
		FROM 
			profiles 
			WHERE profiles.user_id = likes.target_id) AS birthdate ,  
		COUNT(*) as likes
	FROM 
		likes 
		  WHERE target_type_id = 2
			GROUP BY target_id
			ORDER BY birthdate DESC
			LIMIT 10) AS likes_per_user;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT 
  (CASE(sex)
		WHEN 'm' THEN 'man'
		WHEN 'f' THEN 'woman'
	END) AS sex, 
	COUNT(*) as likes_count 
	  FROM (
	    SELECT 
	      user_id as user, 
		    (SELECT sex FROM profiles WHERE user_id = user) as sex 
		  FROM likes) dummy_table 
  GROUP BY sex
  ORDER BY likes_count DESC
  LIMIT 1;
  
  -- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной 
-- сети.     
SELECT CONCAT(first_name, ' ', last_name) AS user, 
	(SELECT COUNT(*) FROM likes WHERE likes.user_id = users.id) + 
	(SELECT COUNT(*) FROM media WHERE media.user_id = users.id) + 
	(SELECT COUNT(*) FROM messages WHERE messages.from_user_id = users.id) 
	AS overall_activity 
	FROM users
	ORDER BY overall_activity
	LIMIT 10;
	
	

-- ДЗ урока 7

-- 1. Составьте список пользователей users, которые осуществили хотя бы один
-- заказ orders в интернет магазине.

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Геннадий';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 2 FROM products
WHERE name = 'Intel Core i5-7400';

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Наталья';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('Intel Core i5-7400', 'Gigabyte H310M S2H');

INSERT INTO orders (user_id)
SELECT id FROM users WHERE name = 'Иван';

INSERT INTO orders_products (order_id, product_id, total)
SELECT LAST_INSERT_ID(), id, 1 FROM products
WHERE name IN ('AMD FX-8320', 'ASUS ROG MAXIMUS X HERO');

SELECT id, name, birthday_at FROM users;

SELECT
  u.id, u.name, u.birthday_at
FROM
  users AS u
JOIN
  orders AS o
ON
  u.id = o.user_id;

-- 2. Выведите список товаров products и разделов catalogs, который соответствует
-- товару.

SELECT
  p.id,
  p.name,
  p.price,
  c.name AS catalog
FROM
  products AS p
LEFT JOIN
  catalogs AS c
ON
  p.catalog_id = c.id;


-- 3. (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица 
-- городов cities (label, name). Поля from, to и label содержат английские 
-- названия городов, поле name — русское. Выведите список рейсов flights с
-- русскими названиями городов.

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  `from` VARCHAR(255) COMMENT 'Город отравления',
  `to` VARCHAR(255) COMMENT 'Город прибытия'
) COMMENT = 'Рейсы';

INSERT INTO flights (`from`, `to`) VALUES
('moscow', 'omsk'),
('novgorod', 'kazan'),
('irkutsk', 'moscow'),
('omsk', 'irkutsk'),
('moscow', 'kazan');

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  label VARCHAR(255) COMMENT 'Код города',
  name VARCHAR(255) COMMENT 'Название города'
) COMMENT = 'Словарь городов';

INSERT INTO cities (label, name) VALUES
('moscow', 'Москва'),
('irkutsk', 'Иркутск'),
('novgorod', 'Новгород'),
('kazan', 'Казань'),
('omsk', 'Омск');

SELECT
  f.id,
  cities_from.name AS `from`,
  cities_to.name AS `to`
FROM flights AS f
  LEFT JOIN cities AS cities_from
    ON f.from = cities_from.label
  LEFT JOIN cities AS cities_to
    ON f.to = cities_to.label;
  
	
	
-- Добавляем внешние ключи в БД vk
-- Для таблицы профилей

-- Смотрим структурв таблицы
DESC profiles;

-- Добавляем внешние ключи
ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk 
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;

-- Изменяем тип столбца при необходимости
ALTER TABLE profiles DROP FOREIGN KEY profles_user_id_fk;
ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;
      
-- Для таблицы сообщений

-- Смотрим структурв таблицы
DESC messages;

-- Добавляем внешние ключи
ALTER TABLE messages
  ADD CONSTRAINT messages_from_user_id_fk 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk 
    FOREIGN KEY (to_user_id) REFERENCES users(id);

-- Смотрим ERDiagram


-- Если нужно удалить
ALTER TABLE table_name DROP FOREIGN KEY constraint_name;


-- Использование JOIN

USE shop;

-- CROSS JOIN
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    CROSS JOIN orders;

-- Неявный JOIN (ведёт себя как CROSS JOIN)
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders;
  
-- Неявный JOIN с условием (ведёт себя как INNER JOIN) 
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users, orders
  WHERE users.id = orders.user_id;

-- Указание связи с помощью ON  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    JOIN orders
  ON users.id = orders.user_id;
  
-- Предложение ON определяет отношения между таблицами.
-- Предложение WHERE описывает, какие строки вас интересуют.
-- Обычно вы можете поменять их местами и получить один и тот же результат,
-- однако это не всегда так с левым внешним соединением.
  
-- INNER JOIN с явным указанием типа
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id
  FROM users
    INNER JOIN orders
  ON users.id = orders.user_id;
  
-- INNER JOIN с агрегирующей функцией
-- Подсчёт заказов пользователя  
SELECT users.name, COUNT(orders.user_id) AS total_orders
  FROM users
    JOIN orders
  ON users.id = orders.user_id
  GROUP BY orders.user_id
  ORDER BY total_orders;
  
-- Аналогично запросу выше, но с сокращением записи имён таблиц
SELECT u.name, COUNT(o.user_id) AS total_orders
  FROM users u
    JOIN orders o
  ON u.id = o.user_id
  GROUP BY o.user_id
  ORDER BY total_orders;
 
 -- Вариант с явным AS
SELECT u.name, COUNT(o.user_id) AS total_orders
  FROM users AS u
    JOIN orders AS o
  ON u.id = o.user_id
  GROUP BY o.user_id
  ORDER BY total_orders;
  
-- LEFT OUTER JOIN (LEFT JOIN)
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id;
  
-- Пользователи, у которых нет заказов
-- Подумайте, какой тип JOIN тут нужен  
SELECT users.id, users.name, users.birthday_at, orders.id, orders.user_id 
  FROM users
    LEFT OUTER JOIN orders
  ON users.id = orders.user_id
  WHERE orders.id IS NULL;

-- RIGHT OUTER JOIN (RIGHT JOIN)
-- Сравним два варианта ниже  
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    LEFT JOIN orders
  ON users.id = orders.user_id; 
  
SELECT users.id AS id_from_users, users.name, users.birthday_at, orders.id AS id_from_orders, orders.user_id 
  FROM users
    RIGHT JOIN orders
  ON users.id = orders.user_id;  

-- FULL JOIN (ведёт себя как LEFT JOIN + RIGHT JOIN)
SELECT *
  FROM users
    FULL JOIN orders;



-- Запросы на БД Vk
USE vk;

-- Выборка данных по пользователю
SELECT first_name, last_name, email, sex, birthdate, hometown
  FROM users
    INNER JOIN profiles
      ON users.id = profiles.user_id
  WHERE users.id = 3;

-- Выборка медиафайлов пользователя
SELECT users.first_name, users.last_name, media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id     
  WHERE media.user_id = 3;
  
-- Выборка фотографий пользователя
SELECT users.first_name, users.last_name, media.user_id, media.filename, media.created_at
  FROM media
    JOIN users
      ON media.user_id = users.id
    JOIN media_types
      ON media.media_type_id = media_types.id     
  WHERE media.user_id = 3 AND media_types.name = 'photo';
  
-- Выборка медиафайлов друзей пользователя
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 3;
  
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
    JOIN users 
      ON (users.id = friendship.friend_id 
        OR users.id = friendship.user_id)
      AND (media.user_id = friendship.user_id 
        OR media.user_id = friendship.friend_id)   
  WHERE users.id = 3;  

-- Отберём только медиафайлы друзей  
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
    JOIN users 
      ON (users.id = friendship.friend_id 
        OR users.id = friendship.user_id)
      AND (media.user_id = friendship.user_id 
        OR media.user_id = friendship.friend_id)   
  WHERE users.id = 3 AND media.user_id != 3;   

-- Проверка
SELECT user_id, friend_id FROM friendship WHERE user_id = 3 OR friend_id = 3;

-- Выборка фотографий пользователя и друзей пользователя
SELECT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN media_types
      ON media.media_type_id = media_types.id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 3 AND media_types.name = 'photo';
  
-- Используем DISTINC  
SELECT DISTINCT media.user_id, media.filename, media.created_at
  FROM media
    JOIN friendship
      ON media.user_id = friendship.user_id
        OR media.user_id = friendship.friend_id
    JOIN media_types
      ON media.media_type_id = media_types.id
    JOIN users 
      ON users.id = friendship.friend_id
        OR users.id = friendship.user_id   
  WHERE users.id = 3 AND media_types.name = 'photo';  

-- Проверка
 SELECT * FROM media_types;

SELECT user_id, friend_id FROM friendship WHERE user_id = 3 OR friend_id = 3;
SELECT * FROM media WHERE media_type_id = 1 AND user_id IN (76);

-- Сообщения от пользователя
SELECT messages.body, users.first_name, users.last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.to_user_id
  WHERE messages.from_user_id = 3;

-- Сообщения к пользователю
SELECT body, first_name, last_name, messages.created_at
  FROM messages
    JOIN users
      ON users.id = messages.from_user_id
  WHERE messages.to_user_id = 3;
  
-- Объединяем все сообщения от пользователя и к пользователю
SELECT messages.from_user_id, messages.to_user_id, messages.body, messages.created_at
  FROM users
    JOIN messages
      ON users.id = messages.to_user_id
        OR users.id = messages.from_user_id
  WHERE users.id = 3;

-- Количество друзей у пользователя с сортировкой
-- Выполним объединение и посмотрим на результат
SELECT users.id, first_name, last_name, requested_at
  FROM users
    LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
        ORDER BY users.id;

-- Затем подсчитаем
SELECT users.id, first_name, last_name, COUNT(requested_at) AS total_friends
  FROM users
    LEFT JOIN friendship
      ON users.id = friendship.user_id
        OR users.id = friendship.friend_id
  GROUP BY users.id
  ORDER BY total_friends DESC
  LIMIT 10;

-- Проверка
SELECT * FROM friendship WHERE user_id = 16 OR friend_id = 16;

-- Список медиафайлов пользователя с количеством лайков
SELECT likes.target_id,
  media.filename,
  target_types.name AS target_type,
  COUNT(DISTINCT(likes.id)) AS total_likes,
  CONCAT(first_name, ' ', last_name) AS owner
  FROM media
    LEFT JOIN likes
      ON media.id = likes.target_id
    LEFT JOIN target_types
      ON likes.target_type_id = target_types.id
    LEFT JOIN users
      ON users.id = media.user_id
  WHERE users.id = 3 AND target_types.name = 'media'
  GROUP BY media.id;

-- Проверка
SELECT id, user_id FROM media WHERE id = 22;

-- 10 пользователей с наибольшим количеством лайков за медиафайлы
SELECT users.id, first_name, last_name, COUNT(*) AS total_likes
  FROM users
    JOIN media
      ON users.id = media.user_id
    JOIN likes
      ON media.id = likes.target_id
    JOIN target_types
      ON likes.target_type_id = target_types.id
  WHERE target_types.name = 'media'
  GROUP BY users.id
  ORDER BY total_likes DESC
  LIMIT 10;




-- Рекомендуемый стиль написания кода SQL
-- https://www.sqlstyle.guide/ru/

