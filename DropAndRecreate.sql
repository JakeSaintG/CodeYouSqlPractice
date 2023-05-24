-- Although it wasn't in the PluralSight videos, here's a demo on conditionally running SQL statements.

--=================DROP========================================================================================================================================

-- Check if table exists. If so, drop it.
IF (EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Client' 
                AND  TABLE_NAME = 'ClientCat'))
BEGIN
    DROP TABLE Client.ClientCat;
END


-- Check if table exists. If so, drop it.
IF (EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Client' 
                AND  TABLE_NAME = 'CatOwner'))
BEGIN
    DROP TABLE Client.CatOwner;
END


-- Check if table exists. If so, drop it.
IF (EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Lib' 
                AND  TABLE_NAME = 'CatBreed'))
BEGIN
    DROP TABLE Lib.CatBreed;
END

-- Check if table exists. If so, drop it.
IF (EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Client' 
                AND  TABLE_NAME = 'Veterinarian'))
BEGIN
    DROP TABLE Client.Veterinarian;
END

-- Check if table exists. If so, drop it.
IF (EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Lib' 
                AND  TABLE_NAME = 'CatColor'))
BEGIN
    DROP TABLE Lib.CatColor;
END


--=================RECREATE========================================================================================================================================

-- Check if table exists. If not, create it.
IF (NOT EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Client' 
                AND  TABLE_NAME = 'ClientCat'))
BEGIN
    CREATE TABLE Client.ClientCat (
		CatNM VARCHAR(50) NOT NULL,
		CatID VARCHAR(50) NOT NULL,
		CatOwner VARCHAR(50) NULL,
		CatSex VARCHAR(6) NOT NULL,
		CatAge INT NULL,
		CatColorPrimary VARCHAR(15) NULL,
		CatColorSecondary VARCHAR(15) NULL,
		CatColorTertiary VARCHAR(15) NULL,
        CatPattern VARCHAR(50),
        CatBreed VARCHAR(50),
        LastModifiedDTS DATETIME2(7) NOT NULL

		CONSTRAINT PK_Cat PRIMARY KEY (CatNM,CatID)
	);
END


-- Check if table exists. If not, create it.
IF (NOT EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Client' 
                AND  TABLE_NAME = 'CatOwner'))
BEGIN
    CREATE TABLE Client.CatOwner (
		OwnerNM VARCHAR(50) NOT NULL,
		OwnerID VARCHAR(50) NOT NULL,
		OwnerEmail VARCHAR(25) NULL,
		OwnerPhone BIGINT NULL,
		HouseholdNM VARCHAR(50) NULL

		CONSTRAINT PK_Owner PRIMARY KEY (OwnerNM, OwnerID)
	);
END


-- Check if table exists. If not, create it.
IF (NOT EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Lib' 
                AND  TABLE_NAME = 'CatBreed'))
BEGIN
    CREATE TABLE Lib.CatBreed (
		BreedNM VARCHAR(50) NOT NULL,
		Size VARCHAR(6) NULL,
		HairLength VARCHAR(50) NULL,
		Hypoallergenic BIT NULL
	);
END


-- Check if table exists. If not, create it.
IF (NOT EXISTS (SELECT * 
                FROM INFORMATION_SCHEMA.TABLES -- This is part of Microsoft SQL Server's built in data. This may not work based on your chosen flavor of SQL.
                WHERE TABLE_SCHEMA = 'Lib' 
                AND  TABLE_NAME = 'CatColor'))
BEGIN
    CREATE TABLE Lib.CatColor (
		ColorNM VARCHAR(50) NOT NULL
	);
END