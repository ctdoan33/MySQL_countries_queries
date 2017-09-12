-- Query 1
SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY percentage DESC
-- Query 2
SELECT countries.name, COUNT(cities.id) AS city_count FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY city_count DESC
-- Query 3
SELECT cities.name, cities.population FROM cities
JOIN countries ON cities.country_id = countries.id
WHERE countries.name = "Mexico" AND cities.population > 500000
ORDER BY cities.population DESC
-- Query 4
SELECT countries.name, languages.language, languages.percentage FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC
-- Query 5
SELECT countries.name, countries.surface_area, countries.population FROM countries
WHERE countries.surface_area < 501 AND countries.population > 100000
-- Query 6
SELECT countries.name, countries.government_form, countries.capital, countries.life_expectancy FROM countries
WHERE countries.government_form = "Constitutional Monarchy" AND capital > 200 AND countries.life_expectancy > 75
-- Query 7
SELECT countries.name, cities.name, cities.district, cities.population FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE countries.name = "Argentina" AND cities.district = "Buenos Aires" AND cities.population > 500000
-- Query 8
SELECT countries.region, COUNT(countries.id) AS number_of_countries FROM countries
GROUP BY countries.region
ORDER BY number_of_countries DESC