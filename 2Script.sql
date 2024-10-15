CREATE TABLE IF NOT exists collection (
    id_collection SERIAL PRIMARY KEY,
	name_collection VARCHAR(60) NOT NULL,
	year INTEGER NOT null
);
CREATE TABLE IF NOT exists album (
    id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(60) NOT NULL,
	year INTEGER NOT null
);
CREATE TABLE IF NOT exists song (
    id_song SERIAL PRIMARY KEY,
	name_song VARCHAR(60) NOT NULL,
	duration INTEGER,
	id_album INTEGER REFERENCES album(id_album)
);
CREATE TABLE IF NOT exists SongCollection (
    id SERIAL PRIMARY KEY,
	id_song INTEGER NOT NULL REFERENCES song(id_song),
	id_collection INTEGER NOT NULL REFERENCES collection(id_collection)
);
CREATE TABLE IF NOT exists genre (
    id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT exists artist (
    id_artist SERIAL PRIMARY KEY,
	name_artist VARCHAR(60) NOT NULL	
);
CREATE TABLE IF NOT exists GenreArtist (
    id SERIAL PRIMARY KEY,
	id_artist INTEGER NOT NULL REFERENCES artist(id_artist),
	id_genre INTEGER NOT NULL REFERENCES genre(id_genre)
);
CREATE TABLE IF NOT exists AlbumArtist (
    id SERIAL PRIMARY KEY,
	id_artist INTEGER NOT NULL REFERENCES artist(id_artist),
	id_album INTEGER NOT NULL REFERENCES album(id_album)
);