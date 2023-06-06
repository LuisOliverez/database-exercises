DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT  UNSIGNED AUTO_INCREMENT NOT NULL,
    Artist VARCHAR (50),
    Album_Name VARCHAR (200),
    Release_Year INT,
    Sales_mil FLOAT,
    Genre VARCHAR (50),
    PRIMARY KEY (id)
    );