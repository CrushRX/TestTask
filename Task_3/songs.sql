CREATE TABLE song (
  name text NOT NULL,
  songwriter text NOT NULL,
  genre varchar(120) NOT NULL,
  duration time NOT NULL,
  releaseDate date NOT NULL
);

CREATE TABLE songwriters (
  name text NOT NULL,
  genre text NOT NULL
);

INSERT INTO songwriters (name, genre)
VALUES ('Metallica', 'Рок'), ('Death', 'Дет метал'), ('Pink Floyd', 'Рок'), ('ABBA', 'Поп'), ('Boney M.', 'Поп'), ('Modern Talking', 'Поп');


INSERT INTO song (name, songwriter, genre, duration, releaseDate)
VALUES ('The Unforgiven III', 'Metallica', 'Рок', '00:07:49', '2008-09-12'), ('All Nightmare Long', 'Metallica', 'Рок', '00:07:57', '2008-09-12'),
('My Apocalypse', 'Metallica', 'Рок', '00:05:00', '1974-04-17'), ('Dirty Window', 'Metallica', 'Рок', '00:05:25', '2003-06-05'),
('St. Anger', 'Metallica', 'Рок', '00:07:21', '2003-06-05'), ('St. Anger', 'Metallica', 'Рок', '00:05:27', '2003-06-05');

INSERT INTO song (name, songwriter, genre, duration, releaseDate)
VALUES ('Speak to Me', 'Pink Floyd', 'Рок', '00:01:08', '1974-04-17'), ('Time', 'Pink Floyd', 'Рок', '00:07:04', '1974-04-17'),
('Money', 'Pink Floyd', 'Рок', '00:06:24', '1974-04-17'), ('Wish You Were Here ', 'Pink Floyd', 'Рок', '00:05:17', '1975-09-15');

INSERT INTO song (name, songwriter, genre, duration, releaseDate)
VALUES ('Leprosy', 'Death', 'Дет метал', '00:06:20', '1988-08-12'), ('Born Dead', 'Death', 'Дет метал', '00:03:27', '1988-08-12'),
('Forgotten Past', 'Death', 'Дет метал', '00:4:36', '1988-08-12'), ('Left to Die ', 'Death', 'Дет метал', '00:04:37', '1988-08-12');

INSERT INTO song (name, songwriter, genre, duration, releaseDate) 
VALUES ('Eagle', 'ABBA', 'Поп', '00:05:53', '1977-12-12'), ('One Man, One Woman', 'ABBA', 'Поп', '00:04:37', '1977-12-12'),
('Hole in Your Soul', 'ABBA', 'Поп', '00:03:43', '1977-12-12');

INSERT INTO song (name, songwriter, genre, duration, releaseDate)
VALUES ('Ma Baker', 'Boney M.', 'Поп', '00:04:36', '1976-05-02'),('Have You Ever Seen the Rain?', 'Boney M.', 'Поп', '00:02:40', '1976-05-02'),
('Still I’m Sad', 'Boney M.', 'Поп', '00:04:34', '1976-05-02'),
('Young, Free and Single ', 'Boney M.', 'Поп', '00:04:37', '1985-02-10');

INSERT INTO song (name, songwriter, genre, duration, releaseDate) 
VALUES ('Jet Airliner', 'Modern Talking', 'Поп', '00:04:19', '1987-06-08'), ('Charlene', 'Modern Talking', 'Поп', '00:03:50', '1987-06-08'),
('You And Me', 'Modern Talking', 'Поп', '00:04:04', '1987-06-08'), ('You Are Not Alone ', 'Modern Talking', 'Поп', '00:03:43', '1999-04-12'),
('Taxi Girl ', 'Modern Talking', 'Поп', '00:03:11', '1999-04-12'), ('Mystery ', 'Modern Talking', 'Поп', '00:03:32', '2003-04-31');

SELECT song.name, songwriters.name, song.duration, song.releaseDate 
FROM song INNER JOIN songwriters ON song.songwriter = songwriters.name
WHERE song.genre = "Рок"
ORDER BY releaseDate DESC
LIMIT 10;

SELECT DISTINCT songwriters.name, (SELECT COUNT(name) FROM song WHERE songwriter = songwriters.name ) AS CallsCount
FROM song INNER JOIN songwriters ON song.songwriter = songwriters.name
LIMIT 5;