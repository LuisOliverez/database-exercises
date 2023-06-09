DROP TABLE IF EXISTS albums;
CREATE TABLE albums
(
    id           INT UNSIGNED AUTO_INCREMENT NOT NULL,
    Artist       VARCHAR(50),
    Album_Name   VARCHAR(200),
    Release_Year INT,
    Sales_mil    FLOAT,
    Genre        VARCHAR(50),
    PRIMARY KEY (id)
);












CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);



INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);



SELECT r.name AS role_name, COUNT(u.id) AS user_count
FROM roles r
    JOIN users u ON r.id = u.role_id
    GROUP BY r.name;

SELECT r.name AS role_name, COUNT(u.id) AS user_count
FROM roles r
    LEFT JOIN users u ON r.id = u.role_id
    GROUP BY r.name;

SELECT r.name AS role_name, COUNT(u.id) AS user_count
FROM roles r
    RIGHT JOIN users u ON r.id = u.role_id
    GROUP BY r.name;