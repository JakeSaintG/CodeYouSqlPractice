/*
    Let's say the Veterinarian table start taking a while to query so you've been tasked with
    adding a PRIMARY KEY to the table.
*/

-- In software like SQL Server, a PRIMARY KEY can be added to an existing table with a statement like this:
ALTER TABLE Veterinarian ADD CONSTRAINT PK_Veterinarian PRIMARY KEY (VetNM, VetID);
-- NOTE! This will not work on SQLite!!!

-- In SQLite, it's not possible to use ALTER to add a PK to an existing table. It's possible to do so with a "migration", though:

-- Create a new table with the PRIMARY KEY but named something slightly different:
CREATE TABLE Veterinarian_NEW
(
    VetNM TEXT NOT NULL
	,VetID TEXT NOT NULL
    ,VetEmail TEXT NULL
	,VetPhone INT NULL
    ,PRIMARY KEY (VetNM, VetID)
);

-- Copy the contents of the existing table into the new one:
INSERT INTO Veterinarian_NEW 
    SELECT * FROM Veterinarian;

-- Drop/delete the old table that does not have the PRIMARY KEY.
DROP TABLE IF EXISTS Veterinarian;

-- Rename the new table with the new PRIMARY KEY to the old table name.
ALTER TABLE Veterinarian_NEW RENAME TO Veterinarian;

-- Congrats! You migrated an existing table to have a new property while keeping the data.