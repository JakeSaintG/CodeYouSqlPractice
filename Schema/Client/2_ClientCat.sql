CREATE TABLE Client.ClientCat (
    CatNM VARCHAR(50) NOT NULL,
	CatID VARCHAR(50) NOT NULL,
    CatOwner VARCHAR(50) NULL,
    CatHousehold VARCHAR(50) NULL,
    CatSex VARCHAR(6) NOT NULL,
	CatAge INT NULL,
	CatColorPrimary VARCHAR(15) NULL,
	CatColorSecondary VARCHAR(15) NULL,
	CatColorTertiary VARCHAR(15) NULL,
    CatPattern VARCHAR(50),
    CatBreed VARCHAR(50),
    LastModifiedDTS DATETIME2(7) NOT NULL

	CONSTRAINT PK_Cat PRIMARY KEY (CatNM,CatID)
);

INSERT INTO Client.ClientCat 
(
	CatNM,
	CatID,
    CatOwner,
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
        '1',
        'Christine',
        'St. Germain',
        'female',
        11,
        'Grey',
        'White',
        NULL,
        'Grey with locket',
        'Russian Blue',
        GETDATE()
    ),
    (
        'Misha',
        '2',
        'Jake',
        'St. Germain',
        'female',
        7,
        'Orange',
        'Black',
        'White',
        'Calico',
        'Maine Coon',
        GETDATE()
    ),
    (
        'Cecil',
        '3',
        'Jake',
        'St. Germain',
        'male',
        3,
        'Black',
        NULL,
        NULL,
        'Solid',
        'Domestic Shorthair',
        GETDATE()
    ),
    (
        'Ghost',
        '4',
        'Hadassah',
        'Hadassah''s', --Note! A single quote is escaped with another single quote.
        'male',
        5,
        'Grey',
        NULL,
        NULL,
        'Spotted',
        'Bengal',
        GETDATE()
    ),
    (
        'Kyoko',
        '5',
        'Jill',
        'In-Laws',
        'female',
        15,
        'Grey',
        'Cream',
        NULL,
        'Solid with darker face',
        'Shorthair Siamese',
        GETDATE()
    ),
    (
        'Milo',
        '6',
        'Lauren',
        'Debbie''s Household',
        'male',
        5,
        'Orange',
        'White',
        NULL,
        'Solid with white boots and mustache',
        'German Rex',
        '2023-05-22'
    ),
    (
        'Apollo',
        '7',
        'Ethan',
        'Debbie''s Household',
        'male',
        1,
        'Grey',
        'Black',
        NULL,
        'Grey with black stripes',
        'Domestic Shorthair',
        GETDATE()
    ),
    (
        'Debbie',
        '8',
        'Lauren',
        'Debbie''s Household',
        'female',
        6,
        'Black',
        NULL,
        NULL,
        'Solid',
        'Maine Coon',
        GETDATE()
    )
