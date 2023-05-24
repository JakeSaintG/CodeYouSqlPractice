-- Let's expand on WHERE a little bit more. OR was in the last file and AND is also pretty straight forward.
-- Show all cats that have a grey primary color and that are also female.
SELECT *
FROM [CatDB].[Client].[ClientCat] 
WHERE CatSex = 'female' AND CatColorPrimary = 'Grey'

-- A vet is looking at your data and is curious how many shorthair cats are registered.
-- A more in-depth DB would have tons more data to go off of but let's just check CatBreed for 'Shorthair' using LIKE.
SELECT *
FROM [CatDB].[Client].[ClientCat] 
WHERE CatBreed LIKE '%Shorthair%'
-- The '%' sign is used to basically say that "anything can be here".
    -- We don't care what comes before 'Shorthair' (ie: Domestic Shorthair) so '%Shorthair' would be used.
    -- We also don't care what comes after 'Shorthair' (ie: Shorthair Siamese) so 'Shorthair%' would be used.
    -- Using '%Shorthair%' means that anything can come before and after 'Shorthair' and are okay with that.

-- Database Admins would point out that AND statements can perform poorly over large data sets. 
-- Use IN to find cats in Debbie's Household and in the St. Germain household.
SELECT *
FROM [CatDB].[Client].[ClientCat] 
WHERE CatHousehold IN('Debbie''s Household', 'St. Germain') -- The double tick in the first argument is used to escape the tick that is actually in the string.
