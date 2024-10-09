CREATE TABLE IF NOT exists collection (
    id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL,
	year INTEGER NOT null
);
CREATE TABLE IF NOT exists AlbumCollection (
    id SERIAL PRIMARY KEY,
	collection VARCHAR(60) NOT NULL,
	song VARCHAR(90) NOT NULL
);
CREATE TABLE IF NOT exists song (
    id_song SERIAL PRIMARY KEY,
	name_song VARCHAR(60) NOT NULL,
	duration INTEGER,
	album VARCHAR(90) NOT NULL
);


