USE vk;
 -- *************************************************************** --
SELECT * FROM friendship; 

DESCRIBE users;
SELECT * FROM users LIMIT 10;
UPDATE users SET created_at = updated_at WHERE created_at > updated_at 

 -- *************************************************************** --
 
SELECT * FROM profiles LIMIT 10;
UPDATE profiles SET sex = '';
CREATE TEMPORARY TABLE sex (sex CHAR(1));
INSERT INTO sex VALUES ('m'), ('f');
SELECT * FROM sex;
UPDATE profiles SET sex = (SELECT sex FROM sex ORDER BY RAND() LIMIT 1);
UPDATE profiles SET photo_id = FLOOR(1 + (RAND() * 100));
SELECT FLOOR(1 + (RAND() * 100)); -- Рандом от 1 до 100, FLOOR  округлить
SELECT COUNT(*) FROM users;  -- Считает кол-во строк

 -- *************************************************************** --

SELECT * FROM messages LIMIT 10; -- to_community_id проверить
UPDATE messages SET
	from_user_id = FLOOR(1 + (RAND() * 100)),
	to_user_id = FLOOR(1 + (RAND() * 100));
SELECT * FROM messages WHERE from_user_id = to_user_id;
UPDATE messages SET to_user_id  = from_user_id + 1 WHERE from_user_id = to_user_id;
-- Проверить на совпадение from_user_id c to_user_id(чтобы не было совпадений. где совпадает добавить +1

-- *************************************************************** --

SELECT * FROM media;
SELECT * FROM media_types;
TRUNCATE media_types; -- очистить таблицу с обнулением первичного столбца id.
DELETE FROM media_types;
INSERT INTO media_types (name) VALUE
	('photo'),
	('audio'),
	('video');
UPDATE media SET media_type_id = FLOOR(1 + (RAND() * 3)); -- рандом от 1 до 3
UPDATE media SET user_id = FLOOR(1 + (RAND() * 100)); -- рандом от 1 до 100
UPDATE media SET filename = CONCAT('https//dropbox.net/vk/file_', filename); -- добавить в столбец filename ссылку перед  
UPDATE media SET size = 6512341 WHERE size = 0; -- где размер 0 поменять значение на 
UPDATE media SET metadata = CONCAT('{"owner":"', (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE id = user_id), '"}'); -- создать пару ключ-значение где ключ - owner, значение - user_id
DESC media;
ALTER TABLE media MODIFY metadata JSON; -- Выставить тип данных json

-- *************************************************************** --

SELECT * FROM friendship LIMIT 10;
SELECT * FROM friendship_statuses;
TRUNCATE friendship_statuses;
INSERT INTO friendship_statuses (name) VALUES ('Requested'),
	('Confirmed'),
	('Rejected');
UPDATE friendship SET 
	user_id = FLOOR(1 + (RAND() * 100)),
	friend_id = FLOOR(1 + (RAND() * 100));
UPDATE friendship SET status_id = FLOOR(1 + (RAND() * 3));

-- ************************************************************** --

SELECT * FROM communities_users;
UPDATE communities_users SET community_id = FLOOR(1 + (RAND() * 10));
UPDATE communities_users SET user_id = FLOOR(1 + (RAND() * 100));

-- ************************************************************* --

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	media_id INT UNSIGNED,
	user_id INT UNSIGNED NOT NULL,
	head VARCHAR(255),
	body MEDIUMTEXT,
	created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
	updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SELECT * FROM posts;
DESC posts;
UPDATE posts SET created_at = updated_at WHERE created_at > updated_at;
UPDATE posts SET media_id = FLOOR(1 + (RAND() * 3));
UPDATE posts SET user_id = FLOOR(1 + (RAND() * 100));

-- *************************************************************** --

DESC messages;
ALTER TABLE messages ADD COLUMN to_community_id INT UNSIGNED AFTER to_user_id; -- добавить connunity_id(получатели сообщения) в messages
UPDATE messages SET to_community_id = FLOOR(1 + (RAND() * 10))
	WHERE id > 50 AND id < 70;

-- *************************************************************** --

SELECT * FROM communities;
DESC communities;
ALTER TABLE communities ADD COLUMN is_open BOOLEAN; -- добавить столбец is_open в communities
ALTER TABLE communities ADD COLUMN description VARCHAR(255) AFTER name; -- добавить столбец description в communities
UPDATE communities SET is_open = TRUE WHERE id IN(2, 3);
UPDATE communities SET is_open = FALSE WHERE is_open IS NULL; -- изменить пустые поля на 0 вместо NULL(пустое значение)
UPDATE communities SET description = (SELECT body FROM messages WHERE messages.id = communities.id);
























