/******************************************************************************************
Title: DISTINCT

Query_Type: read

Details:
DISTINCT helps us find different values in our data. It removes duplicate rows from a SELECT-ed
result and ensures that the returned values are unique.

******************************************************************************************/

-- Let's look at what cat breeds we actually have in our data.
-- Find the DISTINCT CatBreed in the ClientCat table. 
SELECT DISTINCT CatBreed AS DistinctBreeds
FROM ClientCat;

-- Maybe we want to show the different primary cat colors in our data.
SELECT 
    DISTINCT CatColorPrimary AS DistinctColors
FROM ClientCat;
