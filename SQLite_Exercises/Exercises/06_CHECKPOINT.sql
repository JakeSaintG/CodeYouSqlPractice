/******************************************************************************************
Title: Checkpoint Exercise!

Details:
Fix the below queries! Solutions start on line 100 but please try to fix them without looking!

******************************************************************************************/

-- Query 1:
SELECT 
    CatNM
    CatHousehold
    CatAge
    CatBreed
FROM ClientCat;

-- Query 2:
INSERT INTO CatColor (ColorNM) 
VALUES (brown);

-- Query 3: 
-- This query will update ALL entries. I really only update Hope's email...
UPDATE CatOwner
SET OwnerEmail = 'hope@homewardbound.com'
WHERE 1=1;









































































--------------------------------QUERY 1--------------------------------
-- Query 1: Missing commas
SELECT 
    CatNM
    ,CatHousehold
    ,CatAge
    ,CatBreed
FROM ClientCat;

-- Query 1: Also acceptable 
SELECT 
    CatNM,
    CatHousehold,
    CatAge,
    CatBreed
FROM ClientCat;

--------------------------------QUERY 2--------------------------------
-- Query 2: Missing single quote marks
INSERT INTO CatColor (ColorNM) 
VALUES ('brown');

--------------------------------QUERY 3--------------------------------
-- Query 3: Try narrowing down the WHERE clause. 
-- It's not uncommon to have the previous value included in the WHERE clause.
UPDATE CatOwner
SET OwnerEmail = 'hope@homewardbound.com'
WHERE OwnerNM = 'Hope' AND OwnerEmail = 'hope@gmail.com';

-- Query 3: A safer narrowing of the WHERE clause. 
-- We should probably use the UniqueID just to be safe.
-- We can chain some AND statements to include it. 
UPDATE CatOwner
SET OwnerEmail = 'hope@homewardbound.com'
WHERE OwnerNM = 'Hope' 
    AND OwnerEmail = 'hope@gmail.com'
    AND OwnerID = '68bc4100-25b4-4861-b23a-d64e24f950ff';
