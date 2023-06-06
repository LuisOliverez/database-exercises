DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT  UNSIGNED AUTO_INCREMENT NOT NULL,
    artist VARCHAR (50),
    album_name VARCHAR (200),
    release_date INT,
    sales FLOAT,
    genre VARCHAR (50),
    PRIMARY KEY (id)
    );