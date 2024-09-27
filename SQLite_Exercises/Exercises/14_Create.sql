-- Create vet table VetNM, VetLocation, VetID, LastModifiedDTS
CREATE TABLE Veterinarian (
    VetNM TEXT NOT NULL
    ,VetID TEXT NOT NULL
    ,VetEmail TEXT NULL
    ,VetPhone INT NULL
);

-- Let's add a few vets to the table.
INSERT INTO Veterinarian (
    VetNM
    ,VetID
    ,VetEmail
    ,VetPhone
)
VALUES
(
    'Dr. Leonardo'
    ,'1a372c53-e9ed-4ced-9a2f-f5d79b22c55e'
    ,'leo@example.com'
    ,5555555578
),
(
    'Dr. Michelangelo'
    ,'464a899c-e066-4255-9055-cd303b6c1068'
    ,'micky@example.com'
    ,5555555546
),
(
    'Dr. Donatello'
    ,'8f1edc30-f6c4-402c-a37b-b1ee28170ff9'
    ,'donny@example.com'
    ,5555555514
),
(
    'Dr. Raphael'
    ,'5240755a-6756-4122-b189-fa1d04e4347d'
    ,'raph@example.com'
    ,5555555573
);
