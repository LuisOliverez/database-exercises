-- write queries to find the following information:

-- The name of all albums by Pink Floyd.
SELECT * FROM albums
         WHERE artist = 'Pink floyd';



-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_year
FROM albums
    WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';


-- The genre for Supernatural
SELECT genre
FROM albums
    WHERE album_name = 'Supernatural';


-- Which albums were released in the 1990s
SELECT release_year
FROM albums
    WHERE release_year BETWEEN 1990 AND 1999;



-- Which albums had less than 20 million certified sales
SELECT sales_mil
FROM albums
WHERE sales_mil >= 20;




-- All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?

SELECT genre
FROM albums
WHERE genre = 'rock';
-- As always, commit your changes after each step and push them out to GitHub