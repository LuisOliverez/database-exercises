-- Write SELECT statements to output each of the following with a caption:

--     All albums in your table.
SELECT album_name AS 'All albums in table'
FROM albums ;

--     All albums released before 1980
SELECT album_name, release_year AS 'Albums before 1980'
FROM albums
WHERE release_year > 1980;

--     All albums by Michael Jackson
SELECT album_name AS 'Michael Jackson Albums'
FROM albums
WHERE artist = 'michael jackson';

--     After each SELECT add an UPDATE statement to:
--     Make all the albums 10 times more popular (sales * 10)
UPDATE albums
SET sales_mil = sales_mil * 10;

SELECT sales_mil, artist, album_name
FROM albums;

--     Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_year = release_year - 100
WHERE release_year < 1980;

SELECT release_year, artist, album_name
FROM albums
WHERE release_year < 1980;


--     Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'peter jackson'
WHERE artist = 'michael jackson';

SELECT artist, album_name
FROM albums
WHERE artist = 'perter jackson';

--     Add SELECT statements after each UPDATE so you can see the results of your handiwork.