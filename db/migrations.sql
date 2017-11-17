CREATE DATABASE project;

\c project

CREATE TABLE types (
	id SERIAL PRIMARY KEY,
	title VARCHAR(10),
	youtubelink1 VARCHAR(200),
	youtubelink2 VARCHAR(200),
	youtubelink3 VARCHAR(200),
	intro VARCHAR(2000),
	conclusion VARCHAR(2000)
);