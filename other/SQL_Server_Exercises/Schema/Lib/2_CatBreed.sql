CREATE TABLE Lib.CatBreed (
    BreedNM VARCHAR(50) NOT NULL,
    Size VARCHAR(6) NULL,
	HairLength VARCHAR(50) NULL,
	Hypoallergenic BIT NULL
);

INSERT INTO [Lib].[CatBreed]
(
    [BreedNM]
    ,[Size]
    ,[HairLength]
    ,[Hypoallergenic]
)
    VALUES
    (
        'Maine Coon',
        'large',
        'long',
        0
    ),
    (
        'Ragdoll',
        'medium',
        'long',
        0
    ),
    (
        'Shorthair Siamese',
        'small',
        'short',
        1
    ),
    (
        'Longhair Siamese',
        'small',
        'long',
        0
    ),
    (
        'Russian Blue',
        'small',
        'short',
        1
    ),
    (
        'Bengal',
        'medium',
        'short',
        0
    ),
    (
        'Domestic Shorthair',
        'medium',
        'short',
        0
    ),
    (
        'Sphynx',
        'medium',
        'none',
        0
    )