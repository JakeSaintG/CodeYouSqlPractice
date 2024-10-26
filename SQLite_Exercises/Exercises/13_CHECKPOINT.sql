/******************************************************************************************
Title: Checkpoint Exercise!

Details:
We were just handed an existing query used as part of Cat App. We have been tasked with
adding a few other return values to it.

Possible solutions after line 100.
******************************************************************************************/

-- We start with a count of every unique primary cat color.
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
FROM ClientCat
GROUP BY CatColorPrimary;

-- Now modify this query by adding the MAX last modified date.
-- You should see all of them with the same date except orange.
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    -- ANSWER
FROM ClientCat
GROUP BY CatColorPrimary;

-- Order by last modified date with the most recent ones on top (ascending).
-- GROUP goes before ORDER in a statement. SELECT, FROM, JOINs, GROUP, ORDER
-- Orange should have now jumped to the top.
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    -- PREVIOUS ANSWER
FROM ClientCat
GROUP BY CatColorPrimary
-- ANSWER;
































































-- Add in the MAX(LastModifiedDTS) with the 'MostRecentModify' alias.
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    ,MAX(LastModifiedDTS) AS MostRecentModify
FROM ClientCat
GROUP BY CatColorPrimary;


SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    ,MAX(LastModifiedDTS) AS MostRecentModify
FROM ClientCat
GROUP BY CatColorPrimary
ORDER BY LastModifiedDTS ASC;
