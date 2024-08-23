-- Now.... BLOW IT ALL AWAY! If you want. It can all be recreated using the statements in the Schema folder. 
DROP TABLE Client.ClientCat;
DROP TABLE Client.CatOwner;
DROP TABLE Lib.CatBreed;
DROP TABLE Client.Veterinarian;
DROP TABLE Lib.CatColor;

-- Why would we want to DROP a table?
    -- Sometimes, during pulls of data, the fastest way to do it without a substantial load on the host DB is to use code (Powershell, C#, R, Python) to create a temporary table.
    -- After the data pull, the data can be sorted from the temp table using either code or DB relations.
    -- After everything is settled, the temp table can be safely dropped.
