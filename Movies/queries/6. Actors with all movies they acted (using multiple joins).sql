# Select movies and all the actors seperated by comma in each row
select a.name, group_concat(m.title separator ', '), count(m.title) movie_count
FROM movies m
JOIN movie_actor ma ON m.movie_id=ma.movie_id
JOIN actors a on ma.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY movie_count DESC;