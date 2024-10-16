/******************************************************************************************
Title: The Basics of JOINs

Query_Type: read

Details:


******************************************************************************************/

-- Sometimes, SELECT * is a very valid way to get started.
-- Give me EVERYTHING from ClientCat and its corresponding data in CatBreed.
SELECT *
FROM ClientCat a
INNER JOIN CatBreed b ON a.CatBreed = b.BreedNM; -- Will only bring in details that match from both the LEFT and RIGHT tables.

-- Now narrow it down to show me a cat's hair length based on their breed.
SELECT 
	a.CatNM
	,b.BreedNM
	,b.HairLength
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;