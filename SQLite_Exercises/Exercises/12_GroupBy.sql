/******************************************************************************************
Title: GROUP BY

Query_Type: read

Details:
GROUP BY ensures that certain rows are together when the data is returned. The best way to
understand it is to run a couple queries and see it in action! 

For Cat App, the developers are hard at work on a contact list that a vet can use to easily 
get in touch with clients. Let's look at some of the queries that the backend team would 
write to create this view/page.
******************************************************************************************/

-- One step at a time; let's get the owner data and JOIN the cat data with it.
SELECT * 
FROM CatOwner o
JOIN ClientCat c ON o.OwnerID = c.OwnerID;

-- We'll narrow down the fields for now and then group by owner name and then cat name.
SELECT c.CatNM
	  ,o.OwnerNM
FROM CatOwner o
JOIN ClientCat c ON o.OwnerID = c.OwnerID
GROUP BY o.OwnerNM, c.CatNM;

-- Actually...GROUPing BY CatHouseHold and then by CatOwner may be more helpful.
SELECT c.CatHousehold
      ,c.CatNM
	  ,o.OwnerNM
FROM CatOwner o
JOIN ClientCat c ON o.OwnerID = c.OwnerID
GROUP BY c.CatHousehold, o.OwnerNM, c.CatNM;

-- Now return the remaining columns that may be necessary in a contact list!
SELECT c.CatNM
	  ,c.CatHousehold
	  ,o.OwnerNM
	  ,o.OwnerEmail
	  ,o.OwnerPhone
FROM CatOwner o
JOIN ClientCat c ON o.OwnerID = c.OwnerID
GROUP BY c.CatHousehold, o.OwnerNM, c.CatNM, OwnerEmail, OwnerPhone;
