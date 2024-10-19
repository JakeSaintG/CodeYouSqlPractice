/******************************************************************************************
Title: DELETE

Query_Type: write

Details:


******************************************************************************************/

-- Let's say that client Hope isn't thrilled with our app so she requests that her account is deleted.
-- We can do some clean up using DELETE if we want to free up space.

-- Let's remove Hope's cat from the ClientCat table first.
DELETE 
FROM ClientCat 
WHERE CatNM = 'Louie';

-- Though... The above statement would delete cat in the DB that is named Hope. 
-- It would probably be best to use Hope's ID when deleting her data. Let's do that for the CatOwner table.
DELETE
FROM CatOwner
WHERE OwnerID = '68bc4100-25b4-4861-b23a-d64e24f950ff' 
    AND OwnerNM = 'Hope';
