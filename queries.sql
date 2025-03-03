

DROP TABLE IF EXISTS visited_countries, users;

CREATE TABLE users(
id SERIAL PRIMARY KEY,
name VARCHAR(15) UNIQUE NOT NULL,
color VARCHAR(15)
);

CREATE TABLE visited_countries(
id SERIAL PRIMARY KEY,
country_code CHAR(2) NOT NULL,
user_id INTEGER REFERENCES users(id)
);

INSERT INTO users (name, color)
VALUES ('Akhil', 'teal'), ('Rao', 'powderblue');

INSERT INTO visited_countries (country_code, user_id)
VALUES ('IN', 1), ('GB', 1), ('CA', 2), ('IN', 2 );

SELECT *
FROM visited_countries
JOIN users
ON users.id = user_id;