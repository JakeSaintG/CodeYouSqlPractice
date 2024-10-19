-- TODO work on interactivity

-- For your final mission, show me the cat's name, owner, breed, owner phone number, and vet name.
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
