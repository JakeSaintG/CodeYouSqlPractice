/*
    The cat color table is not currently used in the exercise scripts. It's mostly to serve
    has an example of a table that can be used as validation data. Using this table, you 
    could prevent a user from adding a "green" cat.
*/

CREATE TABLE CatColor (
    ColorNM TEXT NOT NULL
);

INSERT INTO CatColor (
	ColorNM
) 
VALUES
    ('black'),
    ('white'),
    ('grey'),
    ('orange'),
    ('cream'),
    ('orange'),
    ('brown');

SELECT * FROM CatColor;