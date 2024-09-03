-- Create vet table VetNM, VetLocation, VetID, LastModifiedDTS
CREATE TABLE Veterinarian (
    VetNM TEXT NOT NULL
    ,VetID TEXT NOT NULL
    ,VetEmail TEXT NULL
    ,VetPhone INT NULL
);

-- Let's add a few vets to the table.
INSERT INTO Veterinarian (
    VetNM
    ,VetID
    ,VetEmail
    ,VetPhone
)
VALUES
(
    'Dr. Leonardo'
    ,'1a372c53-e9ed-4ced-9a2f-f5d79b22c55e'
    ,'leo@example.com'
    ,5555555578
),
(
    'Dr. Michelangelo'
    ,'464a899c-e066-4255-9055-cd303b6c1068'
    ,'micky@example.com'
    ,5555555546
),
(
    'Dr. Donatello'
    ,'8f1edc30-f6c4-402c-a37b-b1ee28170ff9'
    ,'donny@example.com'
    ,5555555514
),
(
    'Dr. Raphael'
    ,'5240755a-6756-4122-b189-fa1d04e4347d'
    ,'raph@example.com'
    ,5555555573
);

-- Now add a VetID column to ClientCat. Make it a big and make it nullable.
ALTER TABLE ClientCat ADD VetID TEXT NULL;
-- Depending on your type of SQL, you may need to specify that you are adding a column.
    -- ALTER TABLE Client.ClientCat ADD COLUMN VetID VARCHAR(50) NULL;

-- Let's associate some households with some vet IDs using UPDATEs to ClientCat.
UPDATE ClientCat
SET VetID = '5240755a-6756-4122-b189-fa1d04e4347d'
Where CatHousehold = 'Genovia''s Palace';

UPDATE ClientCat 
SET VetID = '464a899c-e066-4255-9055-cd303b6c1068'
Where CatHousehold = 'The Farm'; -- If you don't have this in ClientCat, that's fine. Nothing will happen.

UPDATE ClientCat
SET VetID = '464a899c-e066-4255-9055-cd303b6c1068'
Where CatHousehold = 'Aristocats';

UPDATE ClientCat
SET VetID = '8f1edc30-f6c4-402c-a37b-b1ee28170ff9'
Where CatHousehold = 'SaintG';

UPDATE ClientCat
SET VetID = '1a372c53-e9ed-4ced-9a2f-f5d79b22c55e'
Where CatHousehold = 'Homeward';

-- For your final mission (of this file), show me the cat's name, owner, breed, owner phone number, and vet name.
-- Hint, there will be JOINs! Below is one solution:

-- Start by getting everything. Don't worry about specific columns immediately.
SELECT * 
FROM ClientCat a
JOIN CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Veterinarian v ON a.VetID = v.VetID;

-- Now show everything you want from one table.
SELECT a.CatNM
	  ,a.CatOwner
	  ,a.CatBreed
FROM ClientCat a
JOIN CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Veterinarian v ON a.VetID = v.VetID;

-- Add one more and then the last one for something that looks like this! Add some AS statements to make the result table look nice too.
SELECT a.CatNM AS 'Name'
	  ,a.CatOwner AS 'Owner'
	  ,a.CatBreed AS 'Breed'
	  ,b.OwnerPhone AS 'Client Phone'
	  ,v.VetNM AS 'Vet Name'
FROM ClientCat a
JOIN CatOwner b ON a.CatOwner = b.OwnerNM 
JOIN Veterinarian v ON a.VetID = v.VetID;