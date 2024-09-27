-- ===========================================================================================
-- =========================================Distinct==========================================
-- ===========================================================================================

-- Find the DISTINCT CatOwners in the ClientCat table. Use AS to give the result column a different name.
	-- Some people have too many cats...
SELECT DISTINCT CatOwner AS DistinctOwners
FROM ClientCat;
