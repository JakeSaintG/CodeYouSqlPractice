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
exists in the database and a user tries to INSERT a new cat with the same 123 ID, the
INSERT query will fail. Both the ClientCat and CatOwner should already have PKs on them.
******************************************************************************************/

-- CREATE TABLE requires the table name and then the columns in parentheses. 
-- Create the Veterinarian table with VetNM, VetLocation, VetID, and LastModifiedDTS columns.
CREATE TABLE Veterinarian (     
     VetNM TEXT NOT NULL        -- VetNM is the column name and TEXT is the data type the column will store.
    ,VetID TEXT NOT NULL 
    ,VetEmail TEXT NULL         -- NULL or NOT NULL refers to whether or not the database will allow a row's
    ,VetPhone INT NULL          -- column to be empty. NULL will allow it, NOT NULL will not. 

	,PRIMARY KEY (VetID)        -- VetID PRIMARY KEY
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

/******************************************************************************************
Note how this table's PK now contains two columns? This means rows can be inserted if there
is someone with an existing NAME or ID but not both. If Vet Jim with an ID of 123 exists,
Jim with an ID of 456 can be added and that

In this case, Vets can also accidentally end up with the same IDs with different names. This
could be fine or bad depending on how you write your software. For this example, we'll leave
that PK as is and tell the backend team to be careful.
******************************************************************************************/