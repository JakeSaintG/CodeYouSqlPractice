/******************************************************************************************
Title: CREATE

Query_Type: write

Details:
If you looked at the queries that were run to set up the data, you may have noticed the CREATE
statements. We will go over those while we "add a new feature" to Cat App. It has become
worthwhile to create a Veterinarian table in our database. Let's create it and populate it
with some data.

We want each Vet in this table to be UNIQUE and this can be done with the PRIMARY KEY (PK).
The key will be made up of just the VetID column. If a vet with an ID of '123' already
exists in the database, and a user tries to INSERT a new cat with the same 123 ID, the
INSERT query will fail. Both the ClientCat and CatOwner should already have PKs on them.
******************************************************************************************/

-- CREATE TABLE requires the table name and then the columns in parentheses. 
-- Creating the Veterinarian table with VetNM, VetLocation, VetID, and LastModifiedDTS columns.
CREATE TABLE Veterinarian (     
     VetNM TEXT NOT NULL        -- VetNM is the column name and TEXT is the data type the column will store.
    ,VetID TEXT NOT NULL 
    ,VetEmail TEXT NULL         -- NULL or NOT NULL refers to whether or not the database will allow a row's
    ,VetPhone INT NULL          -- column to be empty. NULL will allow it, NOT NULL will not. 
    ,LastModifiedDTS TEXT NOT NULL

	,PRIMARY KEY (VetID) -- VetID PRIMARY KEY
);

-- Let's add a few vets to the table.
INSERT INTO Veterinarian (
    VetNM
    ,VetID
    ,VetEmail
    ,VetPhone
    ,LastModifiedDTS
)
VALUES
(
    'Dr. Leonardo'
    ,'1a372c53-e9ed-4ced-9a2f-f5d79b22c55e'
    ,'leo@example.com'
    ,5555555578
    ,DATE('now')
),
(
    'Dr. Michelangelo'
    ,'464a899c-e066-4255-9055-cd303b6c1068'
    ,'micky@example.com'
    ,5555555546
    ,DATE('now')
),
(
    'Dr. Donatello'
    ,'8f1edc30-f6c4-402c-a37b-b1ee28170ff9'
    ,'donny@example.com'
    ,5555555514
    ,DATE('now')
),
(
    'Dr. Raphael'
    ,'5240755a-6756-4122-b189-fa1d04e4347d'
    ,'raph@example.com'
    ,5555555573
    ,DATE('now')
);

-- Let's test that PRIAMRY KEY by trying to run the below statement.
-- We should see this PRIAMRY KEY violation error: UNIQUE constraint failed
INSERT INTO Veterinarian (
    VetNM
    ,VetID
    ,VetEmail
    ,VetPhone
    ,LastModifiedDTS
)
VALUES
(
    'Dr. Raphael'
    ,'5240755a-6756-4122-b189-fa1d04e4347d'
    ,'raph@example.com'
    ,5555555573
    ,DATE('now')
);