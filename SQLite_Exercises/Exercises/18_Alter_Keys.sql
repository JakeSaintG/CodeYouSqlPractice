/******************************************************************************************
Title: Alter Keys

Query_Type: write

Details:
Let's say the Veterinarian table start taking a while to query so you've been tasked with
updating the PRIMARY KEY to include VetNM.

This is something that can be done in other most SQL technologies with an ALTER statement. 
Here's an example using T-SQL on SQL Server:
    ALTER TABLE Veterinarian ADD CONSTRAINT PK_Veterinarian PRIMARY KEY (VetNM, VetID);
    -- NOTE! This will not work on SQLite!

In SQLite, it's not possible to use ALTER to add a PK to an existing table...but we aren't
quitters! It is possible to do so with a "migration" of sorts, though.

Migration plan:
    - Create a new Veterinarian table with the updated PK.
    - Copy the data into the new table using the existing data. (INSERT with SELECT)
    - Once copied, drop the old Veterinarian table. (This will delete the old table)
    - Rename the new table to just "Veterinarian".
******************************************************************************************/

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

/******************************************************************************************
Note how this table's PK now contains two columns? This means rows can be inserted if there
is someone with an existing NAME or ID but not both. If Vet Jim with an ID of 123 exists,
Jim with an ID of 456 can be added.

In this case, Vets can also accidentally end up with the same IDs with different names. This
could be fine or bad depending on how you write your software. For this example, we'll leave
that PK as is and tell the backend team to be careful.
******************************************************************************************/