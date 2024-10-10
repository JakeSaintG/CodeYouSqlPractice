/******************************************************************************************
Title: Update

Query_Type: write

Details:
A user of our Cat app (Jake) wants to edit their Cat's breed. Use UPDATE to change Cecil's CatBreed to 'Bombay'.
Make sure that just Jake's Cecil is updated! There could be more than one 'Cecil' in bigger data sets.

******************************************************************************************/

UPDATE ClientCat
SET CatBreed = 'Bombay'
WHERE CatNM LIKE 'Cecil%' AND CatOwner = 'Jake';
-- The LIKE statement here serves no purpose. It's just there to show that it can be used.