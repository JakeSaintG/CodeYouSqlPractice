-- ===========================================================================================
-- ==========================================GROUP BY=========================================
-- ===========================================================================================

-- For the purpose of the contact list, GROUP BY CatOwner
SELECT CatNM
	  ,CatOwner
FROM ClientCat
GROUP BY CatOwner, CatNM;

-- Actually...GROUPing  BY CatHouseHold and then by CatOwner may be more helpful.
SELECT CatNM,
	   CatHousehold,
	   CatOwner
FROM ClientCat
GROUP BY CatHousehold, CatOwner, CatNM;

-- Now add in the contact info from the CatOwner table! 
-- You may notice a and b. "a" is an Alias for the ClientCat table and "b" is for CatOwner.
-- Sometimes, columns end up having the same name and alias' end up required. Ex: if "a.CatOwner = b.CatOwner"
SELECT a.CatNM
	  ,a.CatHousehold
	  ,a.CatOwner
	  ,b.OwnerEmail
	  ,b.OwnerPhone
FROM ClientCat a
JOIN CatOwner b on a.CatOwner = b.OwnerNM -- JOIN before ORDER or GROUP
GROUP BY a.CatHousehold, a.CatOwner, a.CatNM, b.OwnerEmail, b.OwnerPhone;
