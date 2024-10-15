INSERT INTO collection (id_collection, name_collection, year) 
VALUES ('1', 'Collection 1', '2022'),('2', 'Collection 2', '2022'),
('3', 'Collection 3', '2023'),('4', 'Collection 4', '2023')
;   
INSERT INTO album (id_album, name_album, year) 
VALUES ('1', 'Album 1', '2021'), ('2', 'Album 2', '2022'), ('3', 'Album 3', '2023')
; 
INSERT INTO song (id_song, name_song, duration, id_album) 
VALUES ('1', 'Song 1', '3', '1'), ('2', 'Song 2', '3', '1'), 
('3', 'Song 3', '3', '2'), ('4', 'Song 4', '3', '2'), ('5', 'Song 5', '3', '3'), ('6', 'Song 6', '3', '3') 
; 
INSERT INTO genre (id_genre, name_genre) 
VALUES ('1', 'pop'), ('2', 'rok'), ('3', 'jazz')
;
INSERT INTO artist (id_artist, name_artist) 
VALUES ('1', 'Artist 1'), ('2', 'Artist 2'), ('3', 'Artist 3'), ('4', 'Artist 4')
;
INSERT INTO SongCollection (id, id_song, id_collection)
VALUES ('1', '1', '1'),('2', '2', '1'),  ('3', '3', '2'), ('4', '4', '2'), ('5', '5', '3'), ('6', '6', '4')
;
INSERT INTO GenreArtist (id, id_artist, id_genre)
VALUES ('1', '1', '1'),('2', '2', '1'),  ('3', '3', '2'), ('4', '4', '3')
;
INSERT INTO AlbumArtist (id, id_artist, id_album)
VALUES ('1', '1', '1'),('2', '2', '1'),  ('3', '3', '2'), ('4', '4', '3')
;