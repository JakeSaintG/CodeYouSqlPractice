/******************************************************************************************
Title: SELECT WHERE Continued

Query_Type: read

Details:
Let's expand on WHERE a little bit more. WHERE can be combined with a small handful of other
keywords/operators to narrow down the information returned.
******************************************************************************************/

-- A Cat App user, Jake, wants to see all the cats in his household. 
-- Use OR to find cats owned by Jake or in the 'SaintG household.
-- "8c263069-6c19-4c2e-99db-0287327a24af" is Jake's UniqueID
SELECT CatNM
	  ,CatSex
	  ,CatAge
	  ,CatBreed
FROM ClientCat
WHERE OwnerID = '8c263069-6c19-4c2e-99db-0287327a24af' OR CatHousehold = 'SaintG';

-- Show all cats that have a gray primary color and that are also female.
SELECT *
FROM ClientCat
WHERE CatSex = 'female' AND CatColorPrimary = 'gray';

-- Database Admins would point out that AND statements can perform poorly over large data sets. 
-- Let's keep our DBAs happy and use IN to find cats in Genovia's Palace and in the SaintG household.
-- NOTE: The two single ticks in the first argument is used to escape the tick that belongs in the string.
	-- https://stackoverflow.com/questions/603572/escape-single-quote-character-for-use-in-an-sqlite-query
SELECT *
FROM ClientCat
WHERE CatHousehold IN('Genovia''s Palace', 'SaintG');

-- A vet is looking at the Cat App data and is curious how many shorthair cats are registered.
-- Let's just check CatBreed for 'Shorthair' using LIKE.
SELECT *
FROM ClientCat
WHERE CatBreed LIKE '%Shorthair%';
-- The '%' sign is used to basically say that "anything can be here".
    -- We don't care what comes before 'Shorthair' (ie: Domestic Shorthair) so '%Shorthair' would be used.
    -- We also don't care what comes after 'Shorthair' (ie: Shorthair Siamese) so 'Shorthair%' would be used.
    -- Using '%Shorthair%' means that anything can come before and after 'Shorthair' and are okay with that.

/*
	Moving on to BETWEEN. The next query will expose you to some concepts that will cover more 
	later but it would be good to at least see them now. Don't worry too much about JOIN and 
	GROUP BY yet. Focus mostly on the WHERE clause with the BETWEEN operator in it.
*/
-- We want to target an in-app newsletter at "senior" cats. Let's target cats between ages 10 and 30
SELECT a.CatAge
	  ,a.CatNM
	  ,a.CatHousehold
	  ,b.OwnerNM
	  ,b.OwnerEmail
	  ,b.OwnerPhone
FROM ClientCat a
JOIN CatOwner b on a.OwnerID = b.OwnerID -- JOINs go after WHERE and before ORDER BY or GROUP BY
WHERE CatAge BETWEEN 10 AND 30 
GROUP BY a.CatHousehold, b.OwnerNM, a.CatAge, a.CatNM, b.OwnerEmail, b.OwnerPhone;