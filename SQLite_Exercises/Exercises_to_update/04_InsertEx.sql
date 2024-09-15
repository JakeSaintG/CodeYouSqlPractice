-- Statements to add additional cat to our data sets.
-- The API layer would typically handle taking the user inputs from the frontend and constructing the two statements below.

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

/*
For simplicity, the Norwegian Forest Cat breed already exists in the CatBreed table.
This can be the case for a lot of data but, if it weren't, it's possible to retrieve the Norwegian Forest Cat data from an external API.
Example:
Frontend ===request===> CatCatalogAPI ============await============> CatCatalogAPI ===insert===> CatDB
                                \\                                      ^
                                 ===request===> CatBreedAPI ===return===^
*/
