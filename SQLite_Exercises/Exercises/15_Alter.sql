/******************************************************************************************
Title: ALTER

Query_Type: write

Details:
Now that we have our Vet table, let's create some relations to the other tables so we can
tie our cats and cat owners to which vet they use. We'll start by adding a VetID table 
to ClientCat and then add Vet data by Household.

We can add this VetID column with an ALTER statement. When adding a column, the ALTER 
statement requires a few keywords to work.

ALTER       <== What we are doing.
TABLE       <== What structure we are ALTERing.
ClientCat   <== Which table we are updating.
ADD         <== The alteration we are doing. In this case, adding a column.
VetID       <== The column name.
TEXT        <== Data type that the column will be.
NULL        <== Whether or not we will allow NULL/empty values.

NOTE! Depending on your type of SQL, you may need to specify that you are adding a column.
Here's the same query for something like SQLServer:
    ALTER TABLE Client.ClientCat ADD COLUMN VetID VARCHAR(50) NULL;
******************************************************************************************/

-- Let's run it! Add the VetID column to ClientCat. Make it TEXT and make it NULLable.
ALTER TABLE ClientCat ADD VetID TEXT NULL;

-- Let's associate some households with some vet IDs using UPDATEs to ClientCat.
UPDATE ClientCat
SET VetID = '5240755a-6756-4122-b189-fa1d04e4347d'
Where CatHousehold = 'Genovia''s Palace';

UPDATE ClientCat 
SET VetID = '464a899c-e066-4255-9055-cd303b6c1068'
Where CatHousehold = 'The Farm'; -- If you don't have this in ClientCat, that's fine. Nothing will happen.

UPDATE ClientCat
SET VetID = '464a899c-e066-4255-9055-cd303b6c1068'
Where CatHousehold = 'Aristocats';

UPDATE ClientCat
SET VetID = '8f1edc30-f6c4-402c-a37b-b1ee28170ff9'
Where CatHousehold = 'SaintG';

UPDATE ClientCat
SET VetID = '1a372c53-e9ed-4ced-9a2f-f5d79b22c55e'
Where CatHousehold = 'Homeward';

UPDATE ClientCat
SET VetID = '5240755a-6756-4122-b189-fa1d04e4347d'
Where CatHousehold = 'Delivery Service';
