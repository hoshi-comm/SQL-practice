-- 1.顧客テーブル --
CREATE TABLE IF NOT EXISTS Customer (
    CustomerId   INTEGER PRIMARY KEY,
    FirstName    VARCHAR(40) NOT NULL,
    LastName     VARCHAR(40) NOT NULL,
    Company      VARCHAR(80),
    Address      VARCHAR(70),
    City         VARCHAR(40),
    State        VARCHAR(40),
    Country      VARCHAR(40),
    PostalCode   VARCHAR(10),
    Phone        VARCHAR(24),
    Fax          VARCHAR(24),
    Email        VARCHAR(60) NOT NULL,
    SupportRepId INTEGER
);

-- 2. Invoice
CREATE TABLE IF NOT EXISTS Invoice (
    InvoiceId     INTEGER PRIMARY KEY,
    CustomerId    INTEGER,
    InvoiceDate   TIMESTAMP NOT NULL,
    BillingAddress VARCHAR(70),
    BillingCity    VARCHAR(40),
    BillingState   VARCHAR(40),
    BillingCountry VARCHAR(40),
    BillingPostalCode VARCHAR(10),
    Total         NUMERIC(10,2) NOT NULL
);

-- 3.InvoiceLine
CREATE TABLE IF NOT EXISTS InvoiceLine (
    InvoiceLineId INTEGER PRIMARY KEY,
    InvoiceId     INTEGER NOT NULL,
    TrackId       INTEGER NOT NULL,
    UnitPrice     NUMERIC(10,2) NOT NULL,
    Quantity      INTEGER NOT NULL
);

-- 4.Track
CREATE TABLE IF NOT EXISTS Track (
    TrackId     INTEGER PRIMARY KEY,
    Name        VARCHAR(200) NOT NULL,
    AlbumId     INTEGER,
    MediaTypeId INTEGER NOT NULL,
    GenreId     INTEGER,
    Composer    VARCHAR(220),
    Milliseconds INTEGER NOT NULL,
    Bytes       INTEGER,
    UnitPrice   NUMERIC(10,2) NOT NULL
);

-- 5.Album
CREATE TABLE IF NOT EXISTS Album (
    AlbumId  INTEGER PRIMARY KEY,
    Title    VARCHAR(160) NOT NULL,
    ArtistId INTEGER NOT NULL
);

-- 6.Artist
CREATE TABLE IF NOT EXISTS Artist (
    ArtistId INTEGER PRIMARY KEY,
    Name     VARCHAR(120)
);

-- 7.Genre
CREATE TABLE IF NOT EXISTS Genre (
    GenreId INTEGER PRIMARY KEY,
    Name    VARCHAR(120)
);

-- 8.MediaType
CREATE TABLE IF NOT EXISTS MediaType (
    MediaTypeId INTEGER PRIMARY KEY,
    Name        VARCHAR(120)
);

-- 9. Playlist
CREATE TABLE IF NOT EXISTS Playlist (
    PlaylistId INTEGER PRIMARY KEY,
    Name       VARCHAR(120)
);

-- 10. PlaylistTrack
CREATE TABLE IF NOT EXISTS PlaylistTrack (
    PlaylistId INTEGER NOT NULL,
    TrackId    INTEGER NOT NULL,
    PRIMARY KEY (PlaylistId, TrackId)
);

-- 11. Employee
CREATE TABLE IF NOT EXISTS Employee (
    EmployeeId INTEGER PRIMARY KEY,
    LastName   VARCHAR(20) NOT NULL,
    FirstName  VARCHAR(20) NOT NULL,
    Title      VARCHAR(30),
    ReportsTo  INTEGER,
    BirthDate  TIMESTAMP,
    HireDate   TIMESTAMP,
    Address    VARCHAR(70),
    City       VARCHAR(40),
    State      VARCHAR(40),
    Country    VARCHAR(40),
    PostalCode VARCHAR(10),
    Phone      VARCHAR(24),
    Fax        VARCHAR(24),
    Email      VARCHAR(60)
);