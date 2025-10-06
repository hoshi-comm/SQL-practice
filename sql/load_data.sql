TRUNCATE
  Employee,
  PlaylistTrack,
  Playlist,
  InvoiceLine,
  Invoice,
  Track,
  Album,
  Artist,
  Genre,
  MediaType,
  Customer
RESTART IDENTITY CASCADE;
 --これを書いておくことで綺麗に流せる



-- Customer
COPY Customer
FROM '/data/chinook/Customer.csv'
WITH (FORMAT csv, HEADER true);

-- Invoice
COPY Invoice
FROM '/data/chinook/Invoice.csv'
WITH (FORMAT csv, HEADER true);

-- InvoiceLine
COPY InvoiceLine
FROM '/data/chinook/InvoiceLine.csv'
WITH (FORMAT csv, HEADER true);

-- Track
COPY Track
FROM '/data/chinook/Track.csv'
WITH (FORMAT csv, HEADER true);

-- Album
COPY Album
FROM '/data/chinook/Album.csv'
WITH (FORMAT csv, HEADER true);

-- Artist
COPY Artist
FROM '/data/chinook/Artist.csv'
WITH (FORMAT csv, HEADER true);

-- Genre
COPY Genre
FROM '/data/chinook/Genre.csv'
WITH (FORMAT csv, HEADER true);

-- MediaType
COPY MediaType
FROM '/data/chinook/MediaType.csv'
WITH (FORMAT csv, HEADER true);

-- Playlist
COPY Playlist
FROM '/data/chinook/Playlist.csv'
WITH (FORMAT csv, HEADER true);

-- PlaylistTrack
COPY PlaylistTrack
FROM '/data/chinook/PlaylistTrack.csv'
WITH (FORMAT csv, HEADER true);

-- Employee
COPY Employee
FROM '/data/chinook/Employee.csv'
WITH (FORMAT csv, HEADER true);