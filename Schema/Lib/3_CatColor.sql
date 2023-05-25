-- Cat color is not used anywhere in the scripts. It exists as an example of a table that can be used as validation data.
-- Using this table, you could prevent a user from adding a "green" cat.

CREATE TABLE Lib.CatColor (
    ColorNM VARCHAR(50) NOT NULL
);

INSERT INTO Lib.CatColor 
(
	ColorNM
) 
    VALUES
    (
        'Black'
    ),
    (
        'White'
    ),
    (
        'Grey'
    ),
    (
        'Orange'
    ),
    (
        'Cream'
    ),
    (
        'Orange'
    ),
    (
        'Brown'
    )