/******************************************************************************************
Title: Insert

Query_Type: write

Details:
We got a new customer! Now we can talk about adding more cats to our existing data. In this case,
the new user would enter her cat's information in the frontend, the frontend would hand the data
to the API, and the API would construct the below queries to add the new cat to the database.
******************************************************************************************/

INSERT INTO CatOwner
(
	OwnerNM
	,OwnerID
	,OwnerEmail
	,OwnerPhone
	,HouseholdNM
)
VALUES
(
	'Peggy'
	,'1cc7f134-10e9-42d5-aeb2-33659ed815f2'
	,'pegleg@example.com'
	,5555555562
	,'The Farm'
);

INSERT INTO ClientCat 
(
	CatNM
	,CatID
    ,CatOwner
    ,CatHousehold
    ,CatSex
	,CatAge
	,CatColorPrimary
	,CatColorSecondary
	,CatColorTertiary
	,CatPattern
	,CatBreed
    ,LastModifiedDTS
)
VALUES
(
	'Boo'
	,'a3ffddda-7a8f-48a7-a6c6-a10fb9334d81'
	,'Peggy'
	,'The Farm'
	,'female'
	,3
	,'black'
	,NULL
	,NULL
	,'solid'
	,'Norwegian Forest Cat'
	,DATE('now')
);

/******************************************************************************************
More:
For simplicity, the Norwegian Forest Cat breed already exists in the CatBreed table. This can 
be the case for some data but, if it was not already in our database, it's possible to retrieve 
the Norwegian Forest Cat data from an external API.

Example:
Cat App frontend ===request===> CatAppAPI ==========await==========> CatAppAPI ===insert===> CatDB breed table.
                            	\\                                      ^
                                 ===request===> CatBreedAPI ===return===^

******************************************************************************************/
