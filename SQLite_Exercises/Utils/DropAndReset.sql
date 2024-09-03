/*
    Student note: 
    This script should only be run if you are already comfortable with the CREATE in the Data folder or you
    are in a "broken state" and truly need to reset the database. Try to become more familiar with tearing down 
    and rebuilding tables before running this.

    Developer note:
    This tutorial is built under the assumption that the user is running queries via DB Browser for SQLite.
    That software handles all actions in a transaction already so putting "BEGIN TRANSACTION" in the query
    causes an error. If these queries are being run outside of DB Browser for SQLite, it is recommended that
    they be wrapped in a transaction.
*/

--=================DROP========================================================================================================================================

-- Drop table ONLY if it exists. If it doesn't, nothing will happen.
DROP TABLE IF EXISTS ClientCat;

-- Drop table ONLY if it exists. If it doesn't, nothing will happen.
DROP TABLE IF EXISTS CatOwner;

-- Drop table ONLY if it exists. If it doesn't, nothing will happen.
DROP TABLE IF EXISTS CatBreed;

-- Drop table ONLY if it exists. If it doesn't, nothing will happen.
DROP TABLE IF EXISTS Veterinarian;

-- Drop table ONLY if it exists. If it doesn't, nothing will happen.
DROP TABLE IF EXISTS CatColor;

--=================RECREATE========================================================================================================================================

-- Conditionally create CatColor table
CREATE TABLE IF NOT EXISTS CatColor (
    ColorNM TEXT NOT NULL
);

-- Conditionally create CatBreed table
CREATE TABLE IF NOT EXISTS CatBreed (
    BreedNM TEXT NOT NULL
    ,Size TEXT NULL
	,HairLength TEXT NULL
	,Hypoallergenic INT NULL
);

-- Conditionally create ClientCat table
CREATE TABLE IF NOT EXISTS ClientCat (
    CatNM TEXT NOT NULL
	,CatID TEXT NOT NULL
    ,CatOwner TEXT NULL
    ,CatHousehold TEXT NULL
    ,CatSex TEXT NOT NULL
	,CatAge INT NULL
	,CatColorPrimary TEXT NULL
	,CatColorSecondary TEXT NULL
	,CatColorTertiary TEXT NULL
    ,CatPattern TEXT
    ,CatBreed TEXT
    ,LastModifiedDTS TEXT NOT NULL
	,PRIMARY KEY (CatID)
);

-- Conditionally create CatOwner table
CREATE TABLE IF NOT EXISTS CatOwner (
    OwnerNM TEXT NOT NULL
	,OwnerID TEXT NOT NULL
    ,OwnerEmail TEXT NULL
	,OwnerPhone INT NULL
	,HouseholdNM TEXT NULL

	,PRIMARY KEY (OwnerNM, OwnerID)
);

--=================INSERT========================================================================================================================================
-- Queries shorted for easier copy/paste

INSERT INTO CatColor (ColorNM) 
VALUES ('black'),('white'),('grey'),('orange'),('cream'),('orange'),('brown');

INSERT INTO CatBreed (BreedNM, Size, HairLength, Hypoallergenic)
VALUES
('Maine Coon','large', 'long',FALSE)
,('Norwegian Forest Cat', 'large', 'long', FALSE)
,('Ragdoll','medium', 'long',FALSE)
,('Shorthair Siamese','small', 'short',TRUE)
,('Longhair Siamese','small', 'long',FALSE)
,('Russian Blue','small', 'short',TRUE)
,('Bengal','medium', 'short',FALSE)
,('Domestic Shorthair','medium', 'short',FALSE)
,('Sphynx','medium', 'none',FALSE)
,('Turkish Angora','medium', 'varies',FALSE);

INSERT INTO ClientCat (CatNM, CatID, CatOwner, CatHousehold, CatSex, CatAge, CatColorPrimary, CatColorSecondary, CatColorTertiary, CatPattern, CatBreed, LastModifiedDTS)
VALUES
('Gremlin','5b1522ba-8541-41dc-bd2c-5241d6790711','Christine','SaintG','female',13,'grey','white',NULL,'Grey with locket','Russian Blue',DATE('now'))
,('Misha','c1b98059-6be4-4c50-aa51-ffbb20a44657','Jake','SaintG','female',8,'orange','black','white','Calico','Maine Coon',DATE('now'))
,('Cecil','323040fd-ac2d-4d5e-bb02-1705a21abf6f','Jake','SaintG','male',3,'black',NULL,NULL,'solid','Domestic Shorthair',DATE('now'))
,('Navia','d150c9f4-d884-4cd6-befe-8cc0ca8dc67e','Jake','SaintG','female',1,'white','grey','black','Grey-White Tabby White','Domestic Shorthair',DATE('now'))
,('Duchess','f04f2798-228b-4186-9171-00bbae2f2200','Adelaide Bonfamille','Aristocats','female',4,'white',NULL,NULL,'solid','Turkish Angora',DATE('now'))
,('Marie','2716120e-8152-4dc2-a847-b2e4dd461dab','Adelaide Bonfamille','Aristocats','female',1,'White',NULL,NULL,'solid','Turkish Angora',DATE('now'))
,('Berlioz','df06de9d-9e2a-48c5-9cfc-9f4d17a0f107','Adelaide Bonfamille','Aristocats','female',1,'grey',NULL,NULL,'dark gray with lighter grey stomach','Turkish Angora',DATE('now'))
,('Toulouse','8b1eb9f2-a0fb-483e-a1b4-11784dc8c63f','Adelaide Bonfamille','Aristocats','female',1,'orange','cream',NULL,'orange with cream stomach','Turkish Angora',DATE('now'))
,('Sassy','55c5e472-0d02-4909-a9a4-76f41576ed6e','Hope','Homeward','female',8,'black','cream','grey','black face, white chest, grey body','Himalayan','2024-05-23')
,('Louie','53610afe-5464-442c-9ba2-0ecef0e44180','Mia','Genovia''s Palace','male',20,'black','white',NULL,'tuxedo','domestic shorthair',DATE('now'));

INSERT INTO CatOwner (OwnerNM, OwnerID, OwnerEmail, OwnerPhone, HouseholdNM)
VALUES
('Jake', '8c263069-6c19-4c2e-99db-0287327a24af', 'jake@stgermain.dev', 5555555555, 'SaintG')
,('Christine', '35b5780e-2a96-403f-a049-5d002c278223', 'christine@example.com', 5555555556, 'SaintG')
,('Adelaide Bonfamille', '593c7175-d07c-4c6a-b792-7014566badf4', 'adelaide@aristocats.com', 5555555557, 'Aristocats')
,('Hope', '68bc4100-25b4-4861-b23a-d64e24f950ff', 'hope@homewardbound.com', 5555555558, 'Homeward')
,('Mia', 'bf64060f-4f38-459d-b2d5-3b31359db238', 'mia.thermopolis@palace.ga', 5555555559, 'Genovia''s Palace');