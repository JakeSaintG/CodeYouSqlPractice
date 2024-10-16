/******************************************************************************************
Title: SELECT

Query_Type: read

Details:
SELECT statements are the most basic queries run against SQL databases. They are also the
most commonly run kind as well. It's how a user or software reads data from out of a table.

By SELECT-ing data, you are asking the database to give you back data in whatever shape you
ask. In the first query, we are asking for all columns to be returned using the * operator. 

******************************************************************************************/

-- Select EVERYTHING (*) from the ClientCat table
SELECT * FROM ClientCat;

-- Let's narrow it down a little and only request a few columns.
SELECT
    CatNM
    ,CatOwner
    ,CatBreed
FROM ClientCat;
