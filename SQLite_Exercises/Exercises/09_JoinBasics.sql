/******************************************************************************************
Title: The Basics of JOINs

Query_Type: read

Details:
SQLite is a RELATIONAL database. This allows us to keep seperate ideas in different tables,
like cats and owners, but be able to connect that data when needed. JOINs let us do just that.ABORT

To join the data in two tables together, the statement must be done ON a column that the two tables
share. The JOIN clause must come after the FROM clause.

******************************************************************************************/

-- Sometimes, SELECT * is a very valid way to get started.
-- Give me EVERYTHING from ClientCat and its corresponding data in CatBreed.
SELECT *
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- Narrow it down to show me a cat's hair length based on their breed.
SELECT 
	a.CatNM
	,b.BreedNM
	,b.HairLength
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- Also, with the power of JOINs, we can use the OwnerID to put an owner name to each cat's name.
SELECT 
    c.CatNM
    ,o.OwnerNM
FROM ClientCat c
JOIN CatOwner o ON c.OwnerID = o.OwnerID;
