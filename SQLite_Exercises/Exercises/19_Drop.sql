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
