-- This SQL query selects the band name and calculates the lifespan of each band
-- from the 'metal_bands' table where the band's style includes 'Glam rock'.
-- The lifespan is calculated based on whether the band has split or not.
-- If the band has split, the lifespan is the difference between the split year and the formed year.
-- If the band has not split, the lifespan is the difference between the current year (2022) and the formed year.
-- The results are ordered by lifespan in descending order.

SELECT band_name,
CASE
	WHEN split IS NOT NULL or split != 0 THEN split - formed
	ELSE 2022 - formed
END AS lifespan
FROM metal_bands
WHERE style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
