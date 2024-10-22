/******************************************************************************************
Title: Checkpoint Exercise!

Details:
For your final mission, show me the cat's name, owner, breed, owner phone number, and vet
name. 

Bonus goal 1: In descending order, return data by cat age.
- Hint: It's possible to ORDER BY something that is not part of the SELECT.

Bonus goal 2: Group by CatHousehold, then the owner's name, and finally the cat's name. 
- Hint: GROUP goes before ORDER in your statement: SELECT, FROM, JOINs, GROUP, ORDER

Return all of that information using a single query.
******************************************************************************************/

-- Your solution:




-- Other possible solution starting after line 100:





















































































-- Start by getting everything from one table. Don't immediately worry about specific columns.
SELECT * 
FROM ClientCat;

-- Add another one of the desired tables.
SELECT * 
FROM ClientCat a
JOIN CatOwner b ON a.CatOwner = b.OwnerNM;

-- Return EVERYTHING from all three tables.
SELECT * 
FROM ClientCat a
JOIN CatOwner b ON a.CatOwner = b.OwnerNM
JOIN Veterinarian c ON a.VetID = c.VetID;

-- Now show everything you want from one table.
SELECT a.CatNM
	  ,a.CatBreed
FROM ClientCat a
JOIN CatOwner b ON a.OwnerID = b.OwnerID
JOIN Veterinarian c ON a.VetID = c.VetID;

-- Add the remaining table for something that looks like this! 
-- Add some AS statements to make the result table look nice too.
SELECT a.CatNM AS 'Name'
	  ,a.CatBreed AS 'Breed'
	  ,b.OwnerNM AS 'Owner'
	  ,b.OwnerPhone AS 'Client Phone'
	  ,c.VetNM AS 'Vet Name'
FROM ClientCat a
JOIN CatOwner b ON a.OwnerID = b.OwnerID
JOIN Veterinarian c ON a.VetID = c.VetID;

-- Adding the first bonus goal (ORDER BY):
SELECT a.CatNM AS 'Name'
	  ,a.CatBreed AS 'Breed'
	  ,b.OwnerNM AS 'Owner'
	  ,b.OwnerPhone AS 'Client Phone'
	  ,c.VetNM AS 'Vet Name'
FROM ClientCat a
JOIN CatOwner b ON a.OwnerID = b.OwnerID
JOIN Veterinarian c ON a.VetID = c.VetID
ORDER BY a.CatAge DESC;

-- Adding the second bonus goal (GROUP BY):
SELECT a.CatNM AS 'Name'
	  ,a.CatBreed AS 'Breed'
	  ,b.OwnerNM AS 'Owner'
	  ,b.OwnerPhone AS 'Client Phone'
	  ,c.VetNM AS 'Vet Name'
FROM ClientCat a
JOIN CatOwner b ON a.OwnerID = b.OwnerID
JOIN Veterinarian c ON a.VetID = c.VetID
GROUP BY a.CatHousehold, b.OwnerNM, a.CatNM
ORDER BY a.CatAge DESC;
