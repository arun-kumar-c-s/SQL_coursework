# Select movies and all the actors seperated by comma in each row
select title, GROUP_CONCAT(a.name separator ", ")
FROM movies m
JOIN movie_actor ma ON m.movie_id=ma.movie_id
JOIN actors a on ma.actor_id = a.actor_id
GROUP BY m.movie_id