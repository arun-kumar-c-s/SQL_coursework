# Popular actor on top rated movies
with top_rated_movies as (select * from movies WHERE imdb_rating > 8)

select a.name, group_concat(m.title separator ', '), count(m.title) movie_count
FROM top_rated_movies m
JOIN movie_actor ma ON m.movie_id=ma.movie_id
JOIN actors a on ma.actor_id = a.actor_id
GROUP BY a.actor_id
ORDER BY movie_count DESC;