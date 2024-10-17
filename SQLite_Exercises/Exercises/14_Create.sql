/******************************************************************************************
Title: CREATE

Query_Type: write

Details:
If you took a look at the queries that were run to set up the data, you may have noticed
the CREATE statements in there. Let's look more into those while we "add a new feature" to
Cat App. It has become worthwhile to create a Veterinarian table in our database. Let's
create it and populate it with some data.

CREATE has as lot of things that it can do but, for right now, we are using it just to make
a new table. 
******************************************************************************************/

-- CREATE TABLE requires the table name and then the columns in parentheses. 
-- Create the Veterinarian table with VetNM, VetLocation, VetID, and LastModifiedDTS columns.
CREATE TABLE Veterinarian (     
     VetNM TEXT NOT NULL        -- VetNM is the column name and TEXT is the data type the column will store.
    ,VetID TEXT NOT NULL 
    ,VetEmail TEXT NULL         -- NULL or NOT NULL refers to whether or not the database will allow a row's
    ,VetPhone INT NULL          -- column to be empty. NULL will allow it, NOT NULL will not. 
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
