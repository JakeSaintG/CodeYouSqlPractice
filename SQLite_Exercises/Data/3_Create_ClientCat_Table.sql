/*
    Notice a difference between this CREATE TABLE script and the previous one?
        This time, we want each cat added to this table to be UNIQUE so we will need a primary key.
        The key will be made up of just the CatID column. If a cat with ID: 123 already exists in
        the databaseand a user tries to insert a new cat with the same 123 ID, the insert query will fail.

    Also, it's good practice to keep up with the last time a row was edited. We will be doing so with the LastModifiedDTS
    (DTS means "Date Time Stamp"). In SQL, there are built in functions like GETDATE() (SQL Server) or DATE('now') (SQLite) 
    for storing the current date. While other SQL solutions have datetime datatypes, SQLite does not but functions like 
    DATE('now') work on TEXT, REAL, or INTEGER types. In this case, we will be storing our dates as TEXT type. 
*/

CREATE TABLE ClientCat (
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

INSERT INTO ClientCat (
	CatNM
    ,CatID
    ,CatOwner
    ,CatHousehold
    ,CatSex
    ,CatAge
    ,CatColorPrimary
    ,CatColorSecondary
    ,CatColorTertiary
    ,CatPattern
    ,CatBreed
    ,LastModifiedDTS
)
VALUES
(
    'Gremlin'
    ,'5b1522ba-8541-41dc-bd2c-5241d6790711'
    ,'Christine'
    ,'SaintG'
    ,'female'
    ,13
    ,'grey'
    ,'white'
    ,NULL
    ,'Grey with locket'
    ,'Russian Blue'
    ,DATE('now')
),
(
    'Misha'
    ,'c1b98059-6be4-4c50-aa51-ffbb20a44657'
    ,'Jake'
    ,'SaintG'
    ,'female'
    ,8
    ,'orange'
    ,'black'
    ,'white'
    ,'Calico'
    ,'Maine Coon'
    ,DATE('now')
),
(
    'Cecil'
    ,'323040fd-ac2d-4d5e-bb02-1705a21abf6f'
    ,'Jake'
    ,'SaintG'
    ,'male'
    ,3
    ,'black'
    ,NULL
    ,NULL
    ,'solid'
    ,'Domestic Shorthair'
    ,DATE('now')
),
(
    'Navia'
    ,'d150c9f4-d884-4cd6-befe-8cc0ca8dc67e'
    ,'Jake'
    ,'SaintG'
    ,'female'
    ,1
    ,'white'
    ,'grey'
    ,'black'
    ,'Grey-White Tabby White'
    ,'Domestic Shorthair'
    ,DATE('now')
),
(
    'Duchess'
    ,'f04f2798-228b-4186-9171-00bbae2f2200'
    ,'Adelaide Bonfamille'
    ,'Aristocats'
    ,'female'
    ,4
    ,'white'
    ,NULL
    ,NULL
    ,'solid'
    ,'Turkish Angora'
    ,DATE('now')
),
(
    'Marie'
    ,'2716120e-8152-4dc2-a847-b2e4dd461dab'
    ,'Adelaide Bonfamille'
    ,'Aristocats'
    ,'female'
    ,1
    ,'White'
    ,NULL
    ,NULL
    ,'solid'
    ,'Turkish Angora'
    ,DATE('now')
),
(
    'Berlioz'
    ,'df06de9d-9e2a-48c5-9cfc-9f4d17a0f107'
    ,'Adelaide Bonfamille'
    ,'Aristocats'
    ,'female'
    ,1
    ,'grey'
    ,NULL
    ,NULL
    ,'dark gray with lighter grey stomach'
    ,'Turkish Angora'
    ,DATE('now')
),
(
    'Toulouse'
    ,'8b1eb9f2-a0fb-483e-a1b4-11784dc8c63f'
    ,'Adelaide Bonfamille'
    ,'Aristocats'
    ,'female'
    ,1
    ,'orange'
    ,'cream'
    ,NULL
    ,'orange with cream stomach'
    ,'Turkish Angora'
    ,DATE('now')
),
(
    'Sassy'
    ,'55c5e472-0d02-4909-a9a4-76f41576ed6e'
    ,'Hope'
    ,'Homeward'
    ,'female'
    ,8
    ,'black'
    ,'cream'
    ,'grey'
    ,'black face, white chest, grey body'
    ,'Himalayan'
    ,DATE('now')
),
(
    'Louie'
    ,'53610afe-5464-442c-9ba2-0ecef0e44180'
    ,'Mia'
    ,'Genovia''s Palace'
    ,'male'
    ,20
    ,'black'
    ,'white'
    ,NULL
    ,'tuxedo'
    ,'domestic shorthair'
    ,DATE('now')
);

SELECT * FROM ClientCat;
