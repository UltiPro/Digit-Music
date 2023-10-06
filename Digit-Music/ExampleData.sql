USE [DigitMusic]
GO
INSERT INTO [Artist]
    (Name)
VALUES
    ('Patrick "Ulti" Wójtowicz')
GO
INSERT INTO [Artist]
    (Name)
VALUES
    ('Test "Test" Test')
GO
INSERT INTO [Album]
    (Artist_Id,Title)
VALUES
    (1, 'Hello World!')
GO
INSERT INTO [Album]
    (Artist_Id,Title)
VALUES
    (2, 'Hello World 2!')
GO
INSERT INTO [Playlist]
    (Name)
VALUES
    ('Best Playlist')
GO
INSERT INTO [Playlist]
    (Name)
VALUES
    ('Second Best Playlist')
GO
INSERT INTO [MediaType]
    (Name)
VALUES
    ('Audio')
GO
INSERT INTO [MediaType]
    (Name)
VALUES
    ('Video')
GO
INSERT INTO [Genre]
    (Name)
VALUES
    ('POP')
GO
INSERT INTO [Genre]
    (Name)
VALUES
    ('Rock')
GO
INSERT INTO [Track]
    (Name,Album_Id,MediaType_Id,Genre_Id,Duration,Bytes,Price,Location)
VALUES
    ('First Track', 1, 1, 1, '3:30', 3670016, 5.99, './music/')
GO
INSERT INTO [Track]
    (Name,MediaType_Id,Genre_Id,Duration,Bytes,Price)
VALUES
    ('Second Track', 1, 2, '3:00', 3670016, 3.99)
GO
INSERT INTO [PlaylistTrack]
    (Playlist_Id,Track_Id)
VALUES
    (1, 1)
GO
INSERT INTO [PlaylistTrack]
    (Playlist_Id,Track_Id)
VALUES
    (1, 2)
GO
INSERT INTO [PlaylistTrack]
    (Playlist_Id,Track_Id)
VALUES
    (2, 2)
GO
INSERT INTO [Employee]
    (FirstName,LastName,JobPosition,ReportsTo_Id,BirthDate,HireDate,Address,City,State,Country,PostalCode,Phone,Email)
VALUES
    ('Max', 'Williams', 'Owner', NULL, '1970-1-1', GETDATE(), 'Street 8', 'New York', 'New York', 'USA', '10001', '2120123456', 'owner@digit-music.com')
GO
INSERT INTO [Employee]
    (FirstName,LastName,JobPosition,ReportsTo_Id,BirthDate,Address,City,State,Country,PostalCode,Phone,Email)
VALUES
    ('Willy', 'Williams', 'Seller', 1, '1975-1-1', 'Street 9', 'New York', 'New York', 'USA', '10001', '7180123456', 'seller@digit-music.com')
GO
INSERT INTO [Customer]
    (NameOrFirm,Address,City,State,Country,PostalCode,Phone,Email,EmployeeSupport_Id)
VALUES
    ('FoxMusic', 'Street 10', 'New York', 'New York', 'USA', '10001', '7182223333', 'owner@fox-music.com', 2)
GO
INSERT INTO [Customer]
    (NameOrFirm,Address,City,State,Country,PostalCode,Phone,Email,EmployeeSupport_Id)
VALUES
    ('Tom Jhonson', 'Street 11', 'New York', 'New York', 'USA', '10001', '7182224444', 'tom@gmail.com', 2) 
GO
INSERT INTO [Invoice]
    (Customer_Id,BillingAddress,BillingCity,BillingState,BillingCountry,BillingPostalCode)
VALUES
    (1, 'Street 10', 'New York', 'New York', 'USA', '10001')
GO
INSERT INTO [Invoice]
    (Customer_Id,BillingAddress,BillingCity,BillingState,BillingCountry,BillingPostalCode)
VALUES
    (2, 'Street 11', 'New York', 'New York', 'USA', '10001')
GO
INSERT INTO [InvoiceTrack]
    (Invoice_Id,Track_Id)
VALUES
    (1, 1)
GO
INSERT INTO [InvoiceTrack]
    (Invoice_Id,Track_Id)
VALUES
    (1, 2)
GO
INSERT INTO [InvoiceTrack]
    (Invoice_Id,Track_Id,Quantity)
VALUES
    (2, 1, 5)
INSERT INTO [InvoiceTrack]
    (Invoice_Id,Track_Id,Quantity)
VALUES
    (2, 2, 3);