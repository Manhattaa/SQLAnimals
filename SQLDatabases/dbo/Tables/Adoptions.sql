-- Skapa de som adopterar-tabellen
	CREATE TABLE Adoptions (
	AdoptionID INT  PRIMARY KEY,
	AnimalID INT,
	AdopterID INT,
	AdoptionDate DATE,
	FOREIGN KEY (AnimalID) REFERENCES Animal(AnimalID),
	FOREIGN KEY (AdopterID) REFERENCES Adopters(AdopterID)
	);