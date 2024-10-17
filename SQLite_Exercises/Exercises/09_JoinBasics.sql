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
FROM ClientCat
JOIN CatBreed ON CatBreed = BreedNM;

-- Narrow it down to show me a cat's hair length based on their breed.
SELECT 
	 CatNM
	,BreedNM
	,HairLength
FROM ClientCat
JOIN CatBreed ON CatBreed = BreedNM;

-- Also, with the power of JOINs, we can use the OwnerID to put an owner name to each cat's name.
-- Note! This query is expected to break. Run it anyway and check out the error message.
SELECT 
     CatNM
    ,OwnerNM
	,OwnerID
FROM ClientCat
JOIN CatOwner ON OwnerID = OwnerID;


-- Both tables have an "OwnerID" column so you get an "ambiguous column name" error.
-- We can fix this by using dot notation in the ON to specify which OwnerID is which.
-- We'll have to do that on the returned OwnerID column as well. You can use either table.
SELECT 
     CatNM
    ,OwnerNM
	,ClientCat.OwnerID
FROM ClientCat
JOIN CatOwner ON ClientCat.OwnerID = CatOwner.OwnerID;

-- That looks a little wordy... Let's use table aliases to shorten it a bit.
-- Most of the time, that looks like 1-3 letters after the tables are declared.
SELECT 
     CatNM
    ,OwnerNM
	,c.OwnerID
FROM ClientCat c
JOIN CatOwner o ON c.OwnerID = o.OwnerID;

-- It is considered good practice by some to include the table alias on all returned columns.
-- This will be done for JOINs in the remaining exercises.
SELECT 
     c.CatNM
    ,o.OwnerNM
	,c.OwnerID
FROM ClientCat c
JOIN CatOwner o ON c.OwnerID = o.OwnerID;
