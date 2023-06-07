-- Write SELECT statements for:
--  Albums released after 1991
SELECT album_name, release_year AS 'Post 1991'
FROM albums
WHERE release_year > 1991;

--  Albums with the genre 'disco'
SELECT genre, album_name AS 'DISCO'
FROM albums
WHERE genre = 'disco';

--  Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT artist, album_name AS 'Whitney Houston Albums'
FROM albums
WHERE artist = 'whitney houston';



-- Convert the SELECT statements to DELETE.
DELETE FROM albums
WHERE release_year > 1991;


DELETE FROM albums
WHERE genre = 'disco';


DELETE FROM albums
WHERE artist = 'whitney houston';
