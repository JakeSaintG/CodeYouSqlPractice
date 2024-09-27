-- ===========================================================================================
-- =======================================Set Functions=======================================
-- ===========================================================================================

-- Find the oldest Cat in the ClientCat table by using MAX(). Use AS to give the result column a different name.
SELECT MAX(CatAge) AS OldestCat
FROM ClientCat;

-- Find the youngest Cat in the ClientCat table by using MAX(). Use AS to give the result column a different name. 
SELECT MIN(CatAge) AS Youngest
FROM ClientCat;

-- Find the combined age of all the Cats in the ClientCat table by using SUM(). Use AS to give the result column a different name.
SELECT SUM(CatAge) AS CombinedYears
FROM ClientCat;

-- Find the number of cats in the ClientCat table by using COUNT(). Use AS to give the result column a different name.
SELECT COUNT(CatNM) AS NumberOfCats
FROM ClientCat;
