-- Let's say that client Jill isn't thrilled with our app so she requests that her account is deleted.
-- We can do some clean up using DELETE if we want to free up space.

DELETE 
FROM Client.ClientCat 
WHERE CatOwner = 'Jill';

DELETE
FROM Client.CatOwner
WHERE OwnerID = 1234 and OwnerNM = 'Jill';
