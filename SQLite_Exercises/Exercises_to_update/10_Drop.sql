-- Now.... BLOW IT ALL AWAY! If you want. It can all be recreated using the statements in the Schema folder. 
DROP TABLE ClientCat;
DROP TABLE CatOwner;
DROP TABLE CatBreed;
DROP TABLE Veterinarian;
DROP TABLE CatColor;

/*
Why would we want to DROP a table?
- Sometimes, during activities like copying large piles of data, the fastest way to do it without a substantial 
load on the host DB is to use code (Powershell, C#, R, Python) to create a temporary table.

- After the data copy, the data can be sorted from the temp table using either code or DB relations.

- After everything is settled, the temp table can be safely dropped.
*/

