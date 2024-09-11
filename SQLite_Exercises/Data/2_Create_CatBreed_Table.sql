/*
    SQLite doesn't have a Boolean or Bit datatype. When needing to do something TRUE/FALSE,
    use an INT and set it to 0 (false) or 1 (true). 
    
    HOWEVER! SQLite is smart enough to know how to handle TRUE or FALSE when inserting into
    an INT column.

    There are other fun tricks you can do with SQLite types but we'll keep simple for now.
*/

CREATE TABLE CatBreed (
    BreedNM TEXT NOT NULL,
    Size TEXT NULL,
	HairLength TEXT NULL,
	Hypoallergenic INT NULL
);

INSERT INTO CatBreed (
    BreedNM,
    Size,
    HairLength,
    Hypoallergenic
)
VALUES 
(
    'Maine Coon',
    'large',
    'long',
    FALSE
),
(
    'Norwegian Forest Cat',
    'large',
    'long',
    FALSE
),
(
    'Ragdoll',
    'medium',
    'long',
    FALSE
),
(
    'Shorthair Siamese',
    'small',
    'short',
    TRUE
),
(
    'Longhair Siamese',
    'small',
    'long',
    FALSE
),
(
    'Russian Blue',
    'small',
    'short',
    TRUE
),
(
    'Bengal',
    'medium',
    'short',
    FALSE
),
(
    'Domestic Shorthair',
    'medium',
    'short',
    FALSE
),
(
    'Sphynx',
    'medium',
    'none',
    FALSE
),
(
    'Turkish Angora',
    'medium',
    'varies',
    FALSE
);

SELECT * FROM CatBreed;