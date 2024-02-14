-- uses the hbtn_0d_tvshows database to lists all genres of the show Dexter
SELECT tv_genres.name 
FROM tv_shows INNER JOIN tv_show_genres INNER JOIN tv_genres 
ON tv_shows.title = "Dexter" AND tv_show_genres.show_id = tv_shows.id 
AND tv_show_genres.genre_id = tv_genres.id 
GROUP BY tv_genres.name 
ORDER BY tv_genres.name ASC;
