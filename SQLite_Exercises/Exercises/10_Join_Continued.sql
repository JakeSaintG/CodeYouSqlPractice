/******************************************************************************************
Title: JOINs Continued

Query_Type: read

Details:
There are many types of JOINs that can be used depending on what "shape" you need the return
data in. A common use case for different kinds of JOINs is determining if data exists in one
table with matching or non-existent data in the other. 

!!!!DO NOT WORRY if the below info-dump does not immediately make sense!!!!
    You do not need to memorize how different JOINs work.

INNER JOINs - Returns data from both tables and excludes data that doesn't match up.
OUTER JOINs - Will also return data that is matching but OUTER joins also return data that does NOT match.
    LEFT OUTER JOIN - Returns all rows of a table on the LEFT side of the join. 
        - For the rows with no matching row on the RIGHT, those result rows will return as NULL.
    RIGHT OUTER JOIN - Returns all rows of a table on the RIGHT side of the join. 
        - For the rows with no matching row on the LEFT, those result rows will return as NULL.
******************************************************************************************/

-- An INNER JOIN will only bring in details that match in both tables.
-- Ex: Cecil won't show up since his breed listed in ClientCat isn't in CatBreed.
SELECT *
FROM ClientCat a
INNER JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- Just using JOIN is functionally the same as an INNER JOIN.
-- Cecil won't show up again (poor guy...).
SELECT *
FROM ClientCat a
JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- A RIGHT JOIN will bring everything over from the RIGHT table, even if there isn't a match on the LEFT.
-- This means that rows will appear to have extra NULLs in it if there's a CatBreed that isn't represented in ClientCat.
-- EX: Sphynx should have no corresponding cat in ClientCat so you should see NULL for CatNM, CatID, etc.
SELECT *
FROM ClientCat a
RIGHT OUTER JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- Like the INNER JOIN, the OUTER keyword can be removed if that is preferred. 
SELECT *
FROM ClientCat a
RIGHT JOIN CatBreed b ON a.CatBreed = b.BreedNM;

-- A LEFT JOIN will bring everything over from the LEFT table, even if there isn't a match on the RIGHT.
-- This means that rows will appear to have extra NULLs in it if there's a ClientCat that isn't represented in CatBreed.
-- Ex: Cecil is now listed as "Bombay" which shouldn't be in the CatBreed table. He will have NULLs where CatBreed data should be.
SELECT
     a.CatNM
    ,a.CatColorPrimary
    ,a.CatBreed
    ,b.BreedNM              -- Should be NULL in returned data
    ,b.Size                 -- Should be NULL in returned data
    ,b.HairLength           -- Should be NULL in returned data
    ,b.Hypoallergenic       -- Should be NULL in returned data
FROM ClientCat a
LEFT JOIN CatBreed b ON a.CatBreed = b.BreedNM;
