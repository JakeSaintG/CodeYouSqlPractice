/******************************************************************************************
Title: DROP

Query_Type: write

Details:

Now.... BLOW IT ALL AWAY! If you want. It can all be recreated using the statements in the Utils folder. 

Note the the Veterinarian table's DROP incldues "IF EXISTS" in it.
It's possible that you got here without actually running the CREATE for the Vet table. If you
tried to just drop a table that doesn't exist, you'd get an error that say something like: 
    "no such table: Veterinarian"
This error could be caught using code but it is usually considered best practice to prevent 
an error in the first place.
******************************************************************************************/

DROP TABLE ClientCat;
DROP TABLE CatOwner;
DROP TABLE CatBreed;
DROP TABLE IF EXISTS Veterinarian;
DROP TABLE CatColor;

/*
Why would we want to DROP a table?
- Sometimes, during activities like copying large piles of data, the fastest way to do it without a substantial 
load on the host DB is to use code (Powershell, C#, R, Python) to create a temporary table.

- After the data copy, the data can be sorted from the temp table using either code or DB relations.

- After everything is settled, the temp table can be safely dropped.
*/
