-- lists all Comedy shows in the database hbtn_0d_tvshows
SELECT tv_shows.title
FROM tv_shows INNER JOIN tv_show_genres INNER JOIN tv_genres 
ON tv_genres.name = "Comedy" AND tv_show_genres.genre_id = tv_genres.id
AND tv_show_genres.show_id = tv_shows.id 
GROUP BY tv_shows.title 
ORDER BY tv_shows.title ASC;
