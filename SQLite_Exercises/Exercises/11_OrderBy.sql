/******************************************************************************************
Title: ORDER BY

Query_Type: read

Details:


******************************************************************************************/

-- ORDER BY CatAge from highest to lowest (descending)
SELECT * 
FROM ClientCat
ORDER BY CatAge DESC;

-- ORDER BY CatAge from highest to lowest (ascending), then ORDER BY LastModifiedDTS since there are some cats that are the same ages.
-- Example: Misha and Sassy are listed as the same age.
	-- Sassy's LastModifiedDTS should be hard coded to '2024-05-23' while the rest use the DATE('now') function.
	-- Without the LastModifiedDTS, the order should be ...Misha, Sassy... etc.
	-- With the LastModifiedDTS, the order should be ...Sassy, Misha... 
SELECT CatAge
	  ,CatNM
	  ,LastModifiedDTS
FROM ClientCat
ORDER BY CatAge, LastModifiedDTS ASC;