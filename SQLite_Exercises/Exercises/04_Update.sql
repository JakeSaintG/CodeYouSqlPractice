/******************************************************************************************
Title: Update

Query_Type: write

Details:
A user of our Cat app (Jake) wants to edit their Cat's breed. Use UPDATE to change Cecil's 
CatBreed to 'Bombay'. Make sure that just Jake's Cecil is updated! There could be more than
one 'Cecil' in bigger data sets.

******************************************************************************************/

UPDATE ClientCat
SET CatBreed = 'Bombay'
WHERE CatNM LIKE 'Cecil%' AND CatOwner = 'Jake';
-- The LIKE statement here serves no purpose. It's just there to show that it can be used.

-- WAIT! We modified an entry in a data! We should probably set the LastModifiedDTS while we're at it.
-- Notice that multiple SETS in an UPDATE requires them to be separated by commas. 
UPDATE ClientCat
SET CatBreed = 'Bombay'
    ,LastModifiedDTS = DATE('now')
WHERE CatNM = 'Cecil' AND CatID = '323040fd-ac2d-4d5e-bb02-1705a21abf6f'; -- Let's use Cecil's unique ID to be safer.
