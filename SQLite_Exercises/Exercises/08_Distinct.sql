-- ===========================================================================================
-- =========================================Distinct==========================================
-- ===========================================================================================

-- Find the DISTINCT CatOwners in the ClientCat table. Use AS to give the result column a different name.
	-- Some people have too many cats...
SELECT DISTINCT CatOwner AS DistinctOwners
FROM ClientCat;

-- Maybe we want to show the different primary cat colors in our data.
SELECT 
    DISTINCT CatColorPrimary AS DistinctColors
FROM ClientCat;