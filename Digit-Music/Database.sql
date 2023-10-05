CREATE DATABASE [DigitMusic]
GO
USE [DigitMusic]
GO
CREATE TABLE [Artist]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL UNIQUE
)
GO
CREATE TABLE [Album]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Artist_Id INT NOT NULL,
    Title NVARCHAR(255) NOT NULL
)
GO
ALTER TABLE [Album] WITH CHECK ADD CONSTRAINT [Album_Artist_FK] FOREIGN KEY ([Artist_Id]) REFERENCES [Artist]([Id]) ON DELETE CASCADE
GO
CREATE TABLE [Playlist]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL
)
GO
CREATE TABLE [PlaylistTrack]
(
    Playlist_Id INT NOT NULL,
    Track_Id INT NOT NULL,
    PRIMARY KEY (Playlist_Id, Track_Id)
)
GO
ALTER TABLE [PlaylistTrack] WITH CHECK ADD CONSTRAINT [PlaylistTrack_Playlist_FK] FOREIGN KEY ([Playlist_Id]) REFERENCES [Playlist]([Id]) ON DELETE CASCADE
GO
CREATE TABLE [MediaType]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL UNIQUE
)
GO
CREATE TABLE [Genre]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL UNIQUE
)
GO

CREATE TABLE [Track]
(
    Id INT NOT NULL PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(200) NOT NULL,
    Album_Id INT NOT NULL,
    MediaType_Id INT NOT NULL,
    Genre_Id INT NOT NULL,
    Duration TIME NOT NULL,
    Bytes INT NOT NULL,
    Price SMALLMONEY NOT NULL,
    Location NVARCHAR(260) NOT NULL
)
GO




CREATE TABLE Employee
(
    Id integer PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    JobPosition varchar(255),
    ReportsTo integer,
    BirthDate timestamp,
    HireDate timestamp,
    Address varchar(255),
    City varchar(255),
    State varchar(255),
    Country varchar(255),
    PostalCode varchar(255),
    Phone varchar(255),
    Email varchar(255)
)GO
CREATE TABLE Customer
(
    Id integer PRIMARY KEY,
    FirstName varchar(255),
    LastName varchar(255),
    Company varchar(255),
    Address varchar(255),
    City varchar(255),
    State varchar(255),
    Country varchar(255),
    PostalCode varchar(255),
    Phone varchar(255),
    Email varchar(255),
    EmployeeSupport_id integer
)GO
CREATE TABLE Invoice
(
    Id integer PRIMARY KEY,
    Customer_Id integer,
    InvoiceDate timestamp,
    BillingAddress varchar(255),
    BillingCity varchar(255),
    BillingState varchar(255),
    BillingCountry varchar(255),
    BillingPostalCode varchar(255),
    Total integer
)GO
CREATE TABLE InvoiceLine
(
    Id integer PRIMARY KEY,
    Invoice_Id integer,
    Track_Id integer,
    Price integer,
    Quantity integer
)GO



ALTER TABLE Track ADD FOREIGN KEY (Album_Id) REFERENCES Album (Id);

ALTER TABLE PlaylistTrack ADD FOREIGN KEY (Playlist_Id) REFERENCES Playlist (Id);

ALTER TABLE PlaylistTrack ADD FOREIGN KEY (Track_Id) REFERENCES Track (Id);

ALTER TABLE Track ADD FOREIGN KEY (MediaType_Id) REFERENCES MediaType (Id);

ALTER TABLE Track ADD FOREIGN KEY (Genre_Id) REFERENCES Genre (Id);

ALTER TABLE Employee ADD FOREIGN KEY (ReportsTo) REFERENCES Employee (Id);

ALTER TABLE Customer ADD FOREIGN KEY (EmployeeSupport_id) REFERENCES Employee (Id);

ALTER TABLE Invoice ADD FOREIGN KEY (Customer_Id) REFERENCES Customer (Id);

ALTER TABLE InvoiceLine ADD FOREIGN KEY (Invoice_Id) REFERENCES Invoice (Id);

ALTER TABLE InvoiceLine ADD FOREIGN KEY (Track_Id) REFERENCES Track (Id);
