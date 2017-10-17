DROP TABLE albums;
DROP TABLE artists;

CREATE TABLE artists
(
  id SERIAL8 primary key,
  name VARCHAR(255),
  image_url TEXT
);

CREATE TABLE albums
(
  id SERIAL8 primary key,
  title VARCHAR(255),
  image_url TEXT,
  genre VARCHAR(255),
  format VARCHAR(255),
  price INT8,
  artist_id INT2 references artists(id)
);
