-- Посчитал 10 самых молодых пользователей 
-- Выдаёт маленькие значения от 0 до 3х лет. Можно вручную подкорректировать, но не уверен что стоит.
 SELECT
	(SELECT CONCAT(first_name, ' ', last_name) FROM users
		WHERE id = user_id) AS friend, TIMESTAMPDIFF(YEAR, birthday, NOW()) 
			AS age FROM profiles ORDER BY age LIMIT 10;
		
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.	
-- Попытка выполнить задание. Пробовал по частям сделать (отдельно лайки и отдельно 10 самых молодых), но не понял как это соеденить чтоб работало.
SELECT SUM(target_id) AS PEOPLE FROM likes
	WHERE target_id IN (
		SELECT
			(SELECT CONCAT(first_name, ' ', last_name) FROM users
				WHERE id = user_id) AS friend, TIMESTAMPDIFF(YEAR, birthday, NOW()) 
					AS age FROM profiles ORDER BY age LIMIT 10);
	
-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
-- До конца не уверен что посчитал то чо нужно. Не понял как вынести отдельно второй столбец назначив имя.
(SELECT SUM(target_id) AS male FROM likes
	WHERE target_id IN (SELECT user_id
  		FROM profiles
  			WHERE sex = 'm'))
UNION
(SELECT SUM(target_id) AS FEMALE FROM likes
	WHERE target_id IN (SELECT user_id 
  		FROM profiles 
  			WHERE sex = 'f'));
  		
 -- 4 Не выполнил
  		
  	
	