/*
    The cat color table is not currently used in the exercise scripts. It's mostly to serve
    has an example of a table that can be used as validation data. Using this table, you 
    could prevent a user from adding a "green" cat.

    Don't focus too much on the details of the commands. We'll run these commands, get
    the data in place, and then talk about the details in the Exercises.
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
    ('gray'),
    ('orange'),
    ('cream'),
    ('orange');

SELECT * FROM CatColor;