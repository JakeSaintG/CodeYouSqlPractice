-- TODO: checkpoint

/*
start combining stuff:

SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
FROM ClientCat
GROUP BY CatColorPrimary;


Now modify the query above by adding the Max last modified date.
-- Should see all of them with the same date except orange
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    ,MAX(LastModifiedDTS) AS MostRecentModify
FROM ClientCat
GROUP BY CatColorPrimary;

Now order by last modified date with the most recent ones on top:
-- Should see all of them with the same date except orange
SELECT 
    DISTINCT CatColorPrimary AS MainColor
    ,Count(CatColorPrimary) AS Count
    ,MAX(LastModifiedDTS) AS MostRecentModify
FROM ClientCat
GROUP BY CatColorPrimary;
-- DESC (descending) qill put the biggest (most recent) entries on top top

*/