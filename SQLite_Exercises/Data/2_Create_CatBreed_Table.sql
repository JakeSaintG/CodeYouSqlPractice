/******************************************************************************************
    SQLite doesn't have a Boolean or Bit datatype. When needing to do something TRUE/FALSE,
    use an INT and set it to 0 (false) or 1 (true). 
    
    HOWEVER! SQLite is smart enough to know how to handle TRUE or FALSE when inserting into
    an INT column.
******************************************************************************************/

CREATE TABLE CatBreed (
    BreedNM TEXT NOT NULL,
    Size TEXT NULL,
	HairLength TEXT NULL,
	Hypoallergenic INT NULL  -- This column will be an INT datatype but used for TRUE/FALSE values.
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
    FALSE                    -- We declared this an INT datatype column but can INSERT a boolean value.
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