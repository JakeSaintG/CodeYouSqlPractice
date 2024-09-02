CREATE TABLE Client.CatOwner (
    OwnerNM VARCHAR(50) NOT NULL,
	OwnerID VARCHAR(50) NOT NULL,
    OwnerEmail VARCHAR(25) NULL,
	OwnerPhone BIGINT NULL,
	HouseholdNM VARCHAR(50) NULL,
);
ALTER TABLE Client.CatOwner ADD CONSTRAINT PK_Owner PRIMARY KEY (OwnerNM, OwnerID);
-- Primary keys can be added later as part of DB Optimization!
-- Very few things need to be DROPPED to bend existing tables to your will.

INSERT INTO [Client].[CatOwner]
(
	[OwnerNM]
	,[OwnerID] 		-- Often times, you may see auto-generated queries or practices that have the comma at the beginning of the line. 
	,[OwnerEmail]	-- This is preference and you should follow team dev practices when writing your own queries.
	,[OwnerPhone]
	,[HouseholdNM]
)
    VALUES
	(
		'Christine',
		'123',
		'christine@example.com',
		5555555555,
		'St. Germain'
	)
	,(
		'Jill',
		'1234',
		'jill@example.com',
		5555555556,
		'In Laws'
	)
	,(
		'Hadassah',
		'12345',
		'das@example.com',
		5555555557,
		'Hadassah''s' --Note! A single quote is escaped with another single quote.
	)
	,(
		'Jake',
		'123456',
		'jakestgermain@outlook.com',
		5555555558,
		'St. Germain'
	)
	,(
		'Ethan',
		'1234567',
		'CoolGuyE@example.com',
		5555555559,
		'Debbie''s Household'
	)
	,(
		'Lauren',
		'12345678',
		'IFeedDebbie@example.com',
		5555555560,
		'Debbie''s Household'
	)
	,(
		'Paige',
		'123456789',
		'paige@example.com',
		5555555561,
		'Reba'
	)
	,(
		'Rick',
		'12345678912',
		'rick@example.com',
		5555555562,
		'RMSSoftCo'
	)
