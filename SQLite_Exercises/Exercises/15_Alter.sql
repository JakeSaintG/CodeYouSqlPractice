-- Now add a VetID column to ClientCat. Make it a big and make it nullable.
ALTER TABLE ClientCat ADD VetID TEXT NULL;
-- Depending on your type of SQL, you may need to specify that you are adding a column.
    -- ALTER TABLE Client.ClientCat ADD COLUMN VetID VARCHAR(50) NULL;

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
