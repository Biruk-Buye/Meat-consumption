USE meat_consumption;

-- Sorting the data from recent to oldest based on year.
SELECT *
FROM df_meat_consumption
ORDER BY year DESC;

-- The historical maximum consumption of meat of chicken, turkey, duck or other poultry per capita for each country
SELECT entity, MAX(poultry) AS poultry_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY poultry_consumption_in_kg_pp DESC
LIMIT 10;

-- The historical maximum consumption of beef per capita for each country
SELECT entity, MAX(beef) AS beef_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY beef_consumption_in_kg_pp DESC
LIMIT 10;

-- The historical maximum consumption of Sheep and Goat per capita for each country
SELECT entity, MAX(sheep_and_goat) AS Sheep_and_Goat_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY Sheep_and_Goat_consumption_in_kg_pp DESC
LIMIT 10;

-- The historical maximum consumption of pork per capita for each country
SELECT entity, MAX(pork) AS pork_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY pork_consumption_in_kg_pp DESC
LIMIT 10;

-- The historical maximum consumption of pork per capita for each country
SELECT entity, MAX(other_meats) AS maximum_other_meats_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY maximum_other_meats_consumption_in_kg_pp DESC
LIMIT 10;

-- The historical maximum consumption of pork per capita for each country
SELECT entity, MAX(fish_and_seafood) AS fish_and_seafood_consumption_in_kg_pp
FROM df_meat_consumption
GROUP BY entity
ORDER BY fish_and_seafood_consumption_in_kg_pp DESC
LIMIT 10;

