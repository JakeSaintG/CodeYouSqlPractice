/******************************************************************************************
Title: ORDER BY

Query_Type: read

Details:
The ORDER BY clause is pretty self explanatory. It allows us to return our data in a certain
ORDER based on the columns provided. It usually is used with the ASC (ascending) and DESC
(descending) keywords. These determine the direction that the ORDER is in.

******************************************************************************************/

-- Ages are a good way to visualize how ASC and DESC work.
-- ORDER BY CatAge from highest to lowest (descending)
SELECT * 
FROM ClientCat
ORDER BY CatAge DESC;

-- ORDER BY CatAge from lowest to highest (ascending)
SELECT * 
FROM ClientCat
ORDER BY CatAge DESC;

-- ORDER BY CatAge from highest to lowest (ascending), then ORDER BY LastModifiedDTS since there are some cats that are the same ages.
-- Example: Four cats are listed as being 1 year old.
	-- Toulouse's LastModifiedDTS should be hard coded to '2024-05-23' while the rest use the DATE('now') function.
	-- With the LastModifiedDTS included, Toulouse is guaranteed to be at the top to the return data.
SELECT CatAge
	  ,CatNM
	  ,LastModifiedDTS
FROM ClientCat
ORDER BY CatAge, LastModifiedDTS ASC;