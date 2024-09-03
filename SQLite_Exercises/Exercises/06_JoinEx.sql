-- ===========================================================================================
-- ======================================Basics of JOINs=====================================
-- ===========================================================================================

-- Sometimes, SELECT * is a very valid way to get started.
-- Give me EVERYTHING from ClientCat and its corresponding data in CatBreed.
SELECT *
FROM ClientCat a
INNER JOIN CatBreed b ON a.CatBreed = b.BreedNM; -- Will only bring in details that match from both the LEFT and RIGHT tables.

-- Now narrow it down to show me a cat's hair length based on their breed.
SELECT 
	a.CatNM,
	b.BreedNM,
	b.HairLength
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- ===========================================================================================
-- ======================================Flavors of JOINs=====================================
-- ===========================================================================================

-- A RIGHT JOIN will bring everything over from the RIGHT table, even if there isn't a match on the LEFT.
-- This means that rows will appear to have extra NULLs in it if there's a CatBreed that isn't represented in ClientCat.
-- EX: Sphynx should have no corresponding cat in CatBreed so you should see NULL for CatNM, CatID, etc.
SELECT *
FROM ClientCat a
RIGHT JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- TODO: FIX THIS STEP \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
-- A LEFT JOIN will bring everything over from the LEFT table, even if there isn't a match on the RIGHT.
-- This means that rows will appear to have extra NULLs in it if there's a ClientCat that isn't represented in CatBreed.
-- Ex: Milo is listed as a "German Rex" which shouldn't be in the CatBreed table. He will have NULLs where CatBreed data should be.
SELECT *
FROM ClientCat a
LEFT JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- TODO: FIX THIS STEP \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
-- An INNER JOIN will only bring in details that match from both the LEFT and RIGHT tables.
-- Ex: Milo won't show up since his breed listed in ClientCat isn't in CatBreed.
SELECT *
FROM ClientCat a
INNER JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- TODO: FIX THIS STEP \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
-- Just saying JOIN is functionally the same as an INNER JOIN.
-- Ex: Milo won't show up again (poor little guy...).
SELECT *
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;
