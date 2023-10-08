-- All track names that are in the rock genre
SELECT T.Name
FROM Track T, Genre G
WHERE T.Genre_Id = G.Id AND G.Name = 'Rock';

-- All track names that are audio or video types
SELECT T.Name
FROM Track T, MediaType MT
WHERE T.MediaType_Id = MT.Id AND (MT.Name = 'Audio' OR MT.Name = 'Video');

-- Bosses and their employees
SELECT E2.FirstName + ' ' + E2.LastName As 'Boss', E1.FirstName + ' ' + E1.LastName As 'Employee'
FROM Employee E1, Employee E2
WHERE E1.ReportsTo_Id = E2.Id AND E1.ReportsTo_Id > 0

-- Count of invoices per customer
SELECT C.NameOrFirm, COUNT(I.Id) AS 'Count of Invoices'
FROM Invoice I, Customer C
WHERE I.Customer_Id = C.Id
GROUP BY C.Id, C.NameOrFirm;

-- Invoice Id and total price
SELECT IT.Invoice_Id, SUM(T.Price * IT.Quantity) AS 'Total Price'
FROM Track T, InvoiceTrack IT
WHERE IT.Track_Id = T.Id
GROUP BY IT.Invoice_Id;