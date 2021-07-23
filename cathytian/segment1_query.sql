-- Check table information
SELECT*FROM animal_intake;
SELECT*FROM animal_outcome;

-- Perform inner join and create a new table
SELECT *
INTO result
FROM animal_intake
JOIN animal_outcome
USING(animal_id)

SELECT*FROM result;