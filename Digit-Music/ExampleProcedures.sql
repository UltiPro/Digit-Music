USE [DigitMusic]
GO
CREATE PROCEDURE [UpdateTrackPrice]
    (
    @TrackId INT,
    @NewPrice SMALLMONEY
)
AS
BEGIN
    UPDATE Track
    SET Price = @NewPrice
    Where Id = @TrackId
END
GO
CREATE PROCEDURE [DeletePlaylist]
    (
    @PlaylistId INT
)
AS
BEGIN
    DELETE FROM Playlist WHERE Id = @PlaylistId
END
GO
CREATE PROCEDURE [CountOfCustomerInvoice]
    (
    @CustomerId INT
)
AS
BEGIN
    SELECT COUNT(I.Id)
    FROM Invoice I
    WHERE I.Customer_Id = @CustomerId
    GROUP BY I.Customer_Id
END
GO
CREATE PROCEDURE [GetCustomersByEmployeeName]
    (
    @EmployeeFirstName NVARCHAR(100),
    @EmployeeLastName NVARCHAR(100)
)
AS
BEGIN
    SELECT *
    FROM Customer C
    WHERE C.EmployeeSupport_Id = (SELECT Id
                                  FROM Employee E
                                  WHERE E.FirstName = @EmployeeFirstName AND E.LastName = @EmployeeLastName);
END
GO
CREATE PROCEDURE [GetPlaylistsByTrack]
    (
    @TrackId INT
)
AS
BEGIN
    SELECT *
    FROM Playlist P, PlaylistTrack PT
    WHERE P.Id = PT.Playlist_Id AND PT.Track_Id = @TrackId
END;