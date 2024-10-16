/******************************************************************************************
Title: SELECT WHERE

Query_Type: read

Details:
Let's say that a user logs into the Cat App and wants to update some information on a cat. The 
username and ID would be part of their request to the API layer. The API layer would gather that
data using a WHERE clause and then send it back to the front end of the application.

******************************************************************************************/

-- Show the cats that belong to just the user Jake. 
SELECT *
FROM ClientCat
WHERE CatOwner = 'Jake';

-- Let's trim that down a little.
SELECT CatNM
	  ,CatSex
	  ,CatAge
	  ,CatBreed
FROM ClientCat
WHERE CatOwner = 'Jake';

/******************************************************************************************
More:
For apps using this database, just pulling names (CatOwner) may cause the wrong info to come
back. We would want to use a unique ID for the owner so it can be assured that the correct 
cat owners are selected.

TODO: actually fix this...put the owner ID or a household ID where it needs to go.
	- While I'm at it 
		- TODO: add puor (owner Yamcha) and Kiki's delivery service cat

    - Based on our DB architecture, the OwnerID info is only stored in another table.
        - A potentially better design would be to not include the CatOwner (name) in the ClientCat table and just have a unique ID.
        - The CatOwner could be shown by using a JOIN.
    - Additionally, we could use the CatOwner and OwnerID that come in from the API call to find the CatHousehold and not hard code it.
******************************************************************************************/
