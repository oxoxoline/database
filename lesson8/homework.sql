-- 1. Добавить необходимые внешние ключи для всех таблиц базы данных vk (приложить команды).

ALTER TABLE profiles 
	ADD CONSTRAINT profiles_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id)
			ON DELETE CASCADE,
 	ADD CONSTRAINT profiles_photo_id_fk
 		FOREIGN KEY (photo_id) REFERENCES media(id)
 			ON DELETE SET NULL;			

ALTER TABLE messages 
	ADD CONSTRAINT messages_from_user_id_fk
		FOREIGN KEY (from_user_id) REFERENCES users(id),
 	ADD CONSTRAINT messages_to_user_id_fk
 		FOREIGN KEY (to_user_id) REFERENCES users(id),
 	ADD CONSTRAINT messages_to_community_id_fk
		FOREIGN KEY (to_community_id) REFERENCES communities(id);

ALTER TABLE posts 
	ADD CONSTRAINT posts_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT posts_media_id_fk
		FOREIGN KEY (media_id) REFERENCES media(id);

ALTER TABLE media
	ADD CONSTRAINT media_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT media_media_type_id_fk	
		FOREIGN KEY (media_type_id) REFERENCES media_types(id);
	
ALTER TABLE likes 
	ADD CONSTRAINT likes_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT likes_target_type_id_fk
		FOREIGN KEY (target_type_id) REFERENCES target_types(id),
    ADD CONSTRAINT likes_target_id_fk
		FOREIGN KEY (target_id) REFERENCES users(id);

ALTER TABLE friendship 
	ADD CONSTRAINT friendship_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT friendship_friend_id_fk
		FOREIGN KEY (friend_id) REFERENCES users(id),
	ADD CONSTRAINT friendship_status_id_fk
		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);

ALTER TABLE orders 
	ADD CONSTRAINT orders_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id); 	
	
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_user_id_fk
		FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE communities_users 
	ADD CONSTRAINT communities_users_community_id_fk
		FOREIGN KEY (community_id) REFERENCES communities(id);

-- 3. Переписать запросы, заданые к ДЗ урока 6 с использованием JOIN (три запроса).

	
-- Не выполнил. Не до конца разобрался с обычным объединением, с JOIN ещё трудней стало. 

-- Поситать общее кол-во лайков, которые получили 10 самых молодых поользователей.
SELECT SUM(got_likes) AS total_likes_for_youngest
	FROM (
		SELECT COUNT(DISTINCT likes.id) AS got_likes
			FROM profiles 
				LEFT JOIN likes 
					ON likes.target_id = profiles.user_id 
						AND target_type_id = 2
			GROUP BY profiles.user_id 
			ORDER BY profiles.birthday DESC 
			LIMIT 10
) AS youngest;

-- Определить кто больше поставил лайков мужчины или женщины?
SELECT profiles.sex AS SEX,
	COUNT(likes.id) AS total_likes
		FROM likes
		JOIN profiles 
			ON likes.user_id = profiles.user_id 
		GROUP BY profiles.sex ORDER BY total_likes DESC 
		LIMIT 1;













