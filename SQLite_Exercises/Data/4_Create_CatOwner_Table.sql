/******************************************************************************************
	Often times, you may see auto-generated queries or dev practices that have the comma at 
	the beginning of a line. THIS IS PREFERENCE and you should follow your Dev Team's or
	company's practices when writing queries. That being said, the front-comma is MY 
	preference so that's how you will see queries moving forward.
******************************************************************************************/

CREATE TABLE CatOwner (
    OwnerNM TEXT NOT NULL
	,OwnerID TEXT NOT NULL
    ,OwnerEmail TEXT NULL
	,OwnerPhone INT NULL
	,HouseholdNM TEXT NULL

	,PRIMARY KEY (OwnerNM, OwnerID)
);

INSERT INTO CatOwner (
	OwnerNM
	,OwnerID
	,OwnerEmail		
	,OwnerPhone
	,HouseholdNM
)
VALUES
(
	'Jake'
	,'8c263069-6c19-4c2e-99db-0287327a24af'
	,'jake@stgermain.dev'
	,5555555555
	,'SaintG'
),
(
	'Christine'
	,'35b5780e-2a96-403f-a049-5d002c278223'
	,'christine@example.com'
	,5555555556
	,'SaintG'
),
(
	'Adelaide Bonfamille'
	,'593c7175-d07c-4c6a-b792-7014566badf4'
	,'adelaide@aristocats.com'
	,5555555557
	,'Aristocats'
),
(
	'Hope'
	,'68bc4100-25b4-4861-b23a-d64e24f950ff'
	,'hope@gmail.com'
	,5555555558
	,'Homeward'
),
(
	'Mia'
	,'bf64060f-4f38-459d-b2d5-3b31359db238'
	,'mia.thermopolis@palace.ga'
	,5555555559
	,'Genovia''s Palace' -- Note! In order to use a ' character in a query, it must be escaped with another ' character. 
),
(
	'Kiki'
	,'81ea882f-0d56-400e-9884-b159bc8338ed'
	,'kiki@kikideliveryservice.jp'
	,5555555560
	,'Delivery Service'
);

SELECT * FROM CatOwner;
