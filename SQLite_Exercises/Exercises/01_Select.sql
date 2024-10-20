/******************************************************************************************
Title: SELECT

Query_Type: read

Details:
SELECT statements are the most basic queries run against SQL databases. SELECT is how a user 
or software reads data from a database table.

By SELECT-ing data, you are asking the database to give you back data in whatever shape you
ask. In the first query, we are asking for all columns to be returned using the * operator. 
******************************************************************************************/

-- Select EVERYTHING (*) from the ClientCat table
SELECT * FROM ClientCat;

-- By specifying some column names, we can request that the database returns only what we need.
SELECT
    CatNM
    ,CatHousehold
    ,CatBreed
FROM ClientCat;
