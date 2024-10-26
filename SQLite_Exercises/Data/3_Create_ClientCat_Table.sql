/******************************************************************************************
    It's good practice to keep up with the last time a row was edited. We will be doing
    so with the LastModifiedDTS (DTS means "Date Time Stamp"). In SQL, there are built in
    functions like GETDATE() (SQL Server) or DATE('now') (SQLite) for storing the current date.

    While other SQL solutions have DATETIME datatypes, SQLite does not. HOWEVER, functions like
    DATE('now') works on TEXT, REAL, or INTEGER column types. In this case, we will be storing
    our dates as TEXT type. 
******************************************************************************************/

CREATE TABLE ClientCat (
    CatNM TEXT NOT NULL,
    CatID TEXT NOT NULL,
    OwnerID TEXT NULL,
    CatHousehold TEXT NULL,
    CatSex TEXT NOT NULL,
    CatAge INT NULL,
    CatColorPrimary TEXT NULL,
    CatColorSecondary TEXT NULL,
    CatColorTertiary TEXT NULL,
    CatPattern TEXT,
    CatBreed TEXT,
    LastModifiedDTS TEXT NOT NULL

	,PRIMARY KEY (CatID)
);

INSERT INTO ClientCat (
	CatNM,
    CatID,
    OwnerID,
    CatHousehold,
    CatSex,
    CatAge,
    CatColorPrimary,
    CatColorSecondary,
    CatColorTertiary,
    CatPattern,
    CatBreed,
    LastModifiedDTS
)
VALUES
(
    'Gremlin',
    '5b1522ba-8541-41dc-bd2c-5241d6790711',
    '35b5780e-2a96-403f-a049-5d002c278223',
    'SaintG',
    'female',
    13,
    'gray',
    'white',
    NULL,
    'gray with locket',
    'Russian Blue',
    DATE('now')
),
(
    'Misha',
    'c1b98059-6be4-4c50-aa51-ffbb20a44657',
    '8c263069-6c19-4c2e-99db-0287327a24af',
    'SaintG',
    'female',
    8,
    'orange',
    'black',
    'white',
    'calico',
    'Maine Coon',
    '2024-01-04'
),
(
    'Cecil',
    '323040fd-ac2d-4d5e-bb02-1705a21abf6f',
    '8c263069-6c19-4c2e-99db-0287327a24af',
    'SaintG',
    'male',
    3,
    'black',
    NULL,
    NULL,
    'solid',
    'Domestic Shorthair',
    DATE('now')
),
(
    'Navia',
    'd150c9f4-d884-4cd6-befe-8cc0ca8dc67e',
    '8c263069-6c19-4c2e-99db-0287327a24af',
    'SaintG',
    'female',
    1,
    'white',
    'gray',
    'black',
    'gray-white tabby',
    'Domestic Shorthair',
    DATE('now')
),
(
    'Duchess',
    'f04f2798-228b-4186-9171-00bbae2f2200',
    '593c7175-d07c-4c6a-b792-7014566badf4',
    'Aristocats',
    'female',
    4,
    'white',
    NULL,
    NULL,
    'solid',
    'Turkish Angora',
    DATE('now')
),
(
    'Marie',
    '2716120e-8152-4dc2-a847-b2e4dd461dab',
    '593c7175-d07c-4c6a-b792-7014566badf4',
    'Aristocats',
    'female',
    1,
    'white',
    NULL,
    NULL,
    'solid',
    'Turkish Angora',
    DATE('now')
),
(
    'Berlioz',
    'df06de9d-9e2a-48c5-9cfc-9f4d17a0f107',
    '593c7175-d07c-4c6a-b792-7014566badf4',
    'Aristocats',
    'female',
    1,
    'gray',
    NULL,
    NULL,
    'dark gray with lighter gray stomach',
    'Turkish Angora',
    DATE('now')
),
(
    'Toulouse',
    '8b1eb9f2-a0fb-483e-a1b4-11784dc8c63f',
    '593c7175-d07c-4c6a-b792-7014566badf4',
    'Aristocats',
    'female',
    1,
    'orange',
    'cream',
    NULL,
    'orange with cream stomach',
    'Turkish Angora',
    '2023-05-23'
),
(
    'Sassy',
    '55c5e472-0d02-4909-a9a4-76f41576ed6e',
    '68bc4100-25b4-4861-b23a-d64e24f950ff',
    'Homeward',
    'female',
    8,
    'black',
    'cream',
    'gray',
    'black face, white chest, gray body',
    'Himalayan',
    '2024-05-23'
),
(
    'Louie',
    '53610afe-5464-442c-9ba2-0ecef0e44180',
    'bf64060f-4f38-459d-b2d5-3b31359db238',
    'Genovia''s Palace',
    'male',
    20,
    'black',
    'white',
    NULL,
    'tuxedo',
    'domestic shorthair',
    DATE('now')
),
(
    'Jiji',
    '4495cafd-cd70-47a3-a80b-39858af4ae82',
    '81ea882f-0d56-400e-9884-b159bc8338ed',
    'Delivery Service',
    'male',
    13,
    'black',
    NULL,
    NULL,
    'solid',
    'domestic shorthair',
    DATE('now')
);

SELECT * FROM ClientCat;
