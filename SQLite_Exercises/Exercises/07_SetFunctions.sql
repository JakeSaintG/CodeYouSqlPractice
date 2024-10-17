/******************************************************************************************
Title: Set Functions

Query_Type: read

Details:
Set functions are used in SELECT clauses to help view the data a little differently. We can
use them to gather information from our cat data. 

We'll also use AS to make these derived columns make more sense. It's called an "alias" or
"aliasing a column" and it will make sense once we use it.
******************************************************************************************/

-- Find the oldest Cat in the ClientCat table by using MAX().
SELECT MAX(CatAge)
FROM ClientCat;

-- Our query came back with a column named "MAX(CatAge)" or "column_name" and I don't love that.
-- We can use AS here to give the result column a different name.
SELECT MAX(CatAge) AS OldestCat
FROM ClientCat;

-- Find the youngest Cat in the ClientCat table by using MIN() and use AS to alias the returned column. 
SELECT MIN(CatAge) AS Youngest
FROM ClientCat;

-- Find the combined age of all the Cats in the ClientCat table by using SUM() and use AS to alias the returned column. 
SELECT SUM(CatAge) AS CombinedYears
FROM ClientCat;

-- Find the number of cats in the ClientCat table by using COUNT() and use AS to alias the returned column. 
SELECT COUNT(CatNM) AS NumberOfCats
FROM ClientCat;
