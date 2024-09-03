/*
	Note how this table's PK contains two columns? This means rows can be inserted if there is
	someone with the same NAME or ID but not both. If Jim with ID 123 exists, Jim with ID 456 
	can be added.
	In this case, Owners can also have the same IDs with different names. This could be good
	or bad depending on how you write your software. For this example, we'll leave that PK as is.
*/

CREATE TABLE CatOwner (
    OwnerNM TEXT NOT NULL,
	OwnerID TEXT NOT NULL,
    OwnerEmail TEXT NULL,
	OwnerPhone INT NULL,
	HouseholdNM TEXT NULL,

	PRIMARY KEY (OwnerNM, OwnerID)
);


INSERT INTO [CatOwner]
(
	[OwnerNM]
	,[OwnerID] 		-- Often times, you may see auto-generated queries or practices that have the comma at the beginning of the line. 
	,[OwnerEmail]	-- This is preference and you should follow team dev practices when writing your own queries.
	,[OwnerPhone]
	,[HouseholdNM]
)
    VALUES
	(
		'Jake',
		'8c263069-6c19-4c2e-99db-0287327a24af',
		'jake@stgermain.dev',
		5555555555,
		'SaintG'
	),
	(
		'Christine',
		'35b5780e-2a96-403f-a049-5d002c278223',
		'christine@example.com',
		5555555556,
		'SaintG'
	),
	(
		'Adelaide Bonfamille',
		'593c7175-d07c-4c6a-b792-7014566badf4',
		'adelaide@aristocats.com',
		5555555557,
		'Aristocats'
	),
	(
		'Hope',
		'68bc4100-25b4-4861-b23a-d64e24f950ff',
		'hope@homewardbound.com',
		5555555558,
		'Homeward'
	),
	(
		'Mia',
		'bf64060f-4f38-459d-b2d5-3b31359db238',
		'mia.thermopolis@palace.ga',
		5555555559,
		'Genovia''s Palace' -- Note! In order to use a ' character in a query, it must be escaped with another ' character. 
	);

SELECT * FROM CatOwner;