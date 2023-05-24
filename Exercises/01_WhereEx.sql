-- Let's say that a user logs into the app and wants to update some information on a cat.
-- The username and ID would be part of their request headers to the API layer.
-- The API layer would take that information, and constuct the initial view using a WHERE clause.

-- Show the cats that belong to just the user Jake. 
SELECT *
FROM [CatDB].[Client].[ClientCat]
WHERE CatOwner = 'Jake'

-- Let's trim that down a little.
SELECT CatNM,
	   CatSex,
	   CatAge,
	   CatBreed
FROM [CatDB].[Client].[ClientCat]
WHERE CatOwner = 'Jake'

-- Let's say that Jake wants to see all the cats in his household. Use OR to find cats owned by Jake or in the 'St. Germain' household.
SELECT CatNM,
	   CatSex,
	   CatAge,
	   CatBreed
FROM [CatDB].[Client].[ClientCat]
WHERE CatOwner = 'Jake' OR CatHousehold = 'St. Germain'

-- Extra details:
    -- Just pulling names (CatOwner) can cause the wrong info to come back. We would want a unique ID for the owner.
    -- Based on our DB architecture, the OwnerID info is only stored in another table.
        -- A potentially better design would be to not include the CatOwner in the ClientCat table and just have a unique ID.
        -- The CatOwner could be shown by using a JOIN.
    -- Additionally, we could use the CatOwner and OwnerID that come in from the API call to find the CatHousehold and not hard code it.

