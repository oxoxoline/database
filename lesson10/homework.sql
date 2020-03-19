-- ДЗ 10
-- 1. Проанализировать какие запросы могут выполняться наиболее 
-- часто в процессе работы приложения и добавить необходимые индексы.
-- Набросал пару комманд
USE vk;

CREATE INDEX profiles_hometown_idx ON profiles(hometown);
CREATE INDEX likes_user_id_idx ON likes(user_id);

-- 2. Построить запрос, который будет выводить следующие столбцы: ...
-- Сделал только это. Не уверен что верно
SELECT DISTINCT communities.name AS name, -- имя группы
	AVG(communities_users.user_id) OVER w AS average, -- среднее количество пользователей в группах
    SUM(communities_users.user_id) OVER w AS sum -- общее количество пользователей в группе
    -- SUM(profiles.user_id) OVER w AS all_people -- ???
		FROM (communities JOIN communities_users) WINDOW w AS (PARTITION BY name);








