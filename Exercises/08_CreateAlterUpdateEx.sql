-- Create vet table VetNM, VetLocation, VetID, LastModifiedDTS
CREATE TABLE [Client].[Veterinarian]
    (VetNM VARCHAR(50) NOT NULL,
	VetID VARCHAR(50) NOT NULL,
    VetEmail VARCHAR(25) NULL,
	VetPhone BIGINT NULL);

-- Let's add a few vets to the table.
INSERT INTO [Client].[Veterinarian]
        ([VetNM],
        [VetID],
        [VetEmail],
        [VetPhone])
    VALUES
    (
        'Dr. Leonardo',
        '153624632642',
        'leo@example.com',
        5555555578
    ),
    (
        'Dr. Michelangelo',
        '15369002732642',
        'micky@example.com',
        5555555546
    ),
    (
        'Dr. Donatello',
        '345668887533',
        'donny@example.com',
        5555555514
    ),
    (
        'Dr. Raphael',
        '645643633456',
        'raph@example.com',
        5555555573
    )


-- You decide later in the development process to add a Primary Key to the Veterinarian table. Use ALTER to add this CONSTRAINT.
ALTER TABLE Client.Veterinarian ADD CONSTRAINT PK_Veterinarian PRIMARY KEY (VetNM, VetID);

-- Now add a VetID column to ClientCat. Make it a big and make it nullable.
ALTER TABLE Client.ClientCat ADD VetID VARCHAR(50) NULL;
-- Depending on your flavor of SQL, you may need to specify that you are adding a column.
    -- ALTER TABLE Client.ClientCat ADD COLUMN VetID VARCHAR(50) NULL;

-- Let's associate some households with some vet IDs using UPDATEs to ClientCat.
UPDATE [CatDB].[Client].[ClientCat]
SET VetID = '645643633456'
Where CatHousehold = 'Debbie''s Household'

UPDATE [CatDB].[Client].[ClientCat] 
SET VetID = '15369002732642'
Where CatHousehold = 'The Farm' -- If you don't have this in ClientCat, that's fine. Nothing will happen.

UPDATE [CatDB].[Client].[ClientCat]
SET VetID = '15369002732642'
Where CatHousehold = 'In-Laws'

UPDATE [CatDB].[Client].[ClientCat]
SET VetID = '345668887533'
Where CatHousehold = 'St. Germain'

UPDATE [CatDB].[Client].[ClientCat]
SET VetID = '153624632642'
Where CatHousehold = 'Hadassah''s'

-- For your final mission (of this file), show me the cat's name, owner, breed, owner phone number, and vet name.
-- Hint, there will be JOINs! Below is one solution:

-- Start by getting everything. Don't worry about specific columns immediately.
SELECT * 
FROM Client.ClientCat a
JOIN Client.CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Client.Veterinarian v ON a.VetID = v.VetID;

-- Now show everything you want from one table.
SELECT a.CatNM,
	   a.CatOwner,
	   a.CatBreed
FROM Client.ClientCat a
JOIN Client.CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Client.Veterinarian v ON a.VetID = v.VetID

-- Add one more and then the last one for something that looks like this! Add some AS statements to make the result table look nice too.
SELECT a.CatNM AS 'Name',
	   a.CatOwner AS 'Owner',
	   a.CatBreed AS 'Breed',
	   b.OwnerPhone AS 'Client Phone',
	   v.VetNM AS 'Vet Name'
FROM Client.ClientCat a
JOIN Client.CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Client.Veterinarian v ON a.VetID = v.VetID