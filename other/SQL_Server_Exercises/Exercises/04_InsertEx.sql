-- Statements to add additional cat to our data sets.
-- The API layer would typically handle taking the user inputs from the frontend and constructing the two statements below.

INSERT INTO [Client].[CatOwner] 
        ([OwnerNM]
        ,[OwnerID]
        ,[OwnerEmail]
        ,[OwnerPhone]
        ,[HouseholdNM])
    VALUES
    (
        'Peggy',
        1234567891,
        'pegleg@example.com',
        5555555562,
        'The Farm'
    )

INSERT INTO Client.ClientCat 
(
	CatNM,
	CatID,
    CatOwner,
    CatHousehold,
    CatSex,
	CatAge,
	CatColorPrimary,
	CatColorSecondary,
	CatColorTertiary,
	CatPattern,
	CatBreed,
    LastModifiedDTS
)
VALUES
(
	'Boo',
	'111111111',
	'Peggy',
	'The Farm',
	'female',
	3,
	'Black',
	NULL,
	NULL,
	'Solid',
	'Norwegian Forest Cat',
    GETDATE()
)

-- For simplicity, the Norwegian Forest Cat breed already exists in the CatBreed table.
-- This can be the case for a lot of data but, if it weren't, it's possible to retrieve the Norwegian Forest Cat data from an external API.

-- Example:
-- Frontend ===request===> CatCatalogAPI ============await============> CatCatalogAPI ===insert===> CatDB
--                                  \\                                      ^
--                                   ===request===> CatBreedAPI ===return===^