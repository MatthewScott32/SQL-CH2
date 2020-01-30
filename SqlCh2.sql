--SELECT * FROM Song;

--SELECT Title FROM Song;

--SELECT Title FROM Song WHERE ArtistId = 6;

--SELECT Title, SongLength, ReleaseDate, ArtistId
--FROM Song 
--WHERE ArtistId = 8
--OR ArtistId = 6;

-- Inserting data into database

--INSERT INTO Song
--VALUES (null, "Baby Shark", 689, '12/06/1896', 9, 3, 5);

--another way to insert (recommended)

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
--VALUES ("Baby Squid", 799, "09/23/1901", 9, 3, 5);

--UPDATE Song 
--SET Title = "Baby Tuna"
--WHERE SongId = 23;

--DELETE FROM Song 
--WHERE SongId = 52;

--Chapter 2 exercises
SELECT *FROM Song;

INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
VALUES ("A Day in the Life", 500, "12/07/1968", 7, 6, 5);

SELECT Title FROM Song
WHERE ArtistId = 6
AND AlbumId = 5;

SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.AlbumId;
SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.AlbumId;

SELECT COUNT(SongId) FROM Song Group BY AlbumId;
SELECT COUNT(SongId) FROM Song Group BY ArtistId;
SELECT COUNT(SongId) FROM Song Group BY GenreId;

SELECT MAX(Title) FROM Song Group BY Title, AlbumId;
SELECT MAX(SongId) FROM Song Group BY SongId, SongLength;