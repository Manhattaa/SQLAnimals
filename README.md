# SQLDatabases




	--Table - Animals
	CREATE TABLE Animal (
	AnimalID INT PRIMARY KEY,
	Name NVARCHAR(50),
	Species NVARCHAR(50),
	Race NVARCHAR(50),
	Age INT,
	Sex NVARCHAR(10),
	Adopted BIT
	);

	--Table - Adopters (Adopters of the Pets)
	CREATE TABLE Adopters (
	AdopterID INT PRIMARY KEY,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	MobileNumber NVARCHAR(20),
	MailAddress NVARCHAR(50)
	);

	-- Adopters
	CREATE TABLE Adoptions (
	AdoptionID INT  PRIMARY KEY,
	AnimalID INT,
	AdopterID INT,
	AdoptionDate DATE,
	FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID),
	FOREIGN KEY (AdopterID) REFERENCES Adopters(AdopterID)
	);


	-- Animal table
	INSERT INTO Animal (AnimalID, Name, Species, Race, Age, Sex, Adopted)
	VALUES 
	(1, 'Fido', 'Dog', 'Labrador', 3, 'Male', 1),
	(2, 'Whiskers', 'Cat', 'Domestic Cat', 5, 'Female', 1),
	(3, 'Rex', 'Dog', 'Schepherd Dog', 2, 'Male', 1),
	(4, 'Kitty', 'Cat', 'Siameese', 4, 'Female', 0)

	-- Adopters
	INSERT INTO Adopters(AdopterID, FirstName, LastName, MobileNumber, MailAddress)
	VALUES
	(1, 'Amanda', 'Olving', '0739452155', 'Amanda.Olving@hejhej@.se'),
	(2, 'Pontus', 'Ahlbäck', '0705815881', 'Philen@yahoo.dk'),
	(3, 'Fady', 'Hatta', '07585381885', 'Fadyhatta123@hotmail.com')

	--Adoptions
	INSERT INTO Adoptions (AdoptionID, AnimalID, AdopterID, AdoptionDate)
	VALUES
	(1, 2, 1, '2023-10-26'),
	(2, 3, 2, '2021-05-12'),
	(3, 1, 3, '2022-12-24')


	-- SELECT * FROM Animal;

	-- SELECT * FROM Adopters;
