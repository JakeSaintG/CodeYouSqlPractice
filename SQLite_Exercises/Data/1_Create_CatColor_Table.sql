-- Cat color is not used anywhere in the scripts. It exists as an example of a table that can be used as validation data.
-- Using this table, you could prevent a user from adding a "green" cat.

CREATE TABLE CatColor (
    ColorNM TEXT NOT NULL
);

INSERT INTO CatColor (
	ColorNM
) 
VALUES
('black')
,('white')
,('grey')
,('orange')
,('cream')
,('orange')
,('brown');

SELECT * FROM CatColor;