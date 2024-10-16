/******************************************************************************************
Title: SELECT WHERE

Query_Type: read

Details:
Let's say that a user logs into the Cat App and wants to update some information on a cat. The 
username and ID would be part of their request to the API layer. The API layer would gather that
data using a WHERE clause and then send it back to the front end of the application.

******************************************************************************************/

-- Show the cats that live in the SaintG household. 
SELECT *
FROM ClientCat
WHERE CatHousehold = 'SaintG';

-- Let's trim that down a little.
SELECT CatNM
	  ,CatSex
	  ,CatAge
	  ,CatBreed
FROM ClientCat
WHERE CatHousehold = 'SaintG';

-- For apps using this database, just pulling households by name may cause the wrong data to come
-- back. We would want to use a unique ID for the desired SELECTed data so it can be assured
-- that the correct rows are returned. Let's do that with the Id '8c263069-6c19-4c2e-99db-0287327a24af'.

SELECT CatNM
	  ,CatSex
	  ,CatAge
	  ,CatBreed
FROM ClientCat
WHERE OwnerID = '8c263069-6c19-4c2e-99db-0287327a24af';
