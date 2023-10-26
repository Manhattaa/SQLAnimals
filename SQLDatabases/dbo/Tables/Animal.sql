--Skapa Tabell Djur
CREATE TABLE Animal (
	AnimalID INT PRIMARY KEY,
	Name NVARCHAR(50),
	Species NVARCHAR(50),
	Race NVARCHAR(50),
	Age INT,
	Sex NVARCHAR(10),
	Adopted BIT
);