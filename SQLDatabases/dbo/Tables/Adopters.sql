--Skapa adopt (de som adopterar) tabellen
	CREATE TABLE Adopters (
	AdopterID INT PRIMARY KEY,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	MobileNumber NVARCHAR(20),
	MailAddress NVARCHAR(50)
);