CREATE DATABASE personalitytypes;

\c personalitytypes

CREATE TABLE types (
	id SERIAL PRIMARY KEY,
	name VARCHAR(10),
	youtubelink1 VARCHAR(255),
	youtubelink2 VARCHAR(255),
	youtubelink3 VARCHAR(255),
	intro VARCHAR(5000),
	strengths VARCHAR(5000),
	weaknesses VARCHAR(5000),
	emotions VARCHAR(5000),
	romance VARCHAR(5000),
	friendships VARCHAR(5000),
	parenthood VARCHAR(5000),
	career VARCHAR(5000),
	work VARCHAR(5000),
	conclusion VARCHAR(5000)
);