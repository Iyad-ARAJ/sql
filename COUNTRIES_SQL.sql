SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = 'slovene';

-- 2 --
SELECT countries.NAME,count(cities.id) AS total_cities
FROM countries
JOIN cities ON countries.id = cities.country_id
GROUP BY country_id
order by total_cities DESC;

-- 3 --

SELECT cities.name
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE cities.population > 500000 AND countries.name = 'Mexico'
ORDER BY cities.population DESC;

-- 4 --

SELECT countries.name, languages.language, languages.percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

 -- 5 --
 SELECT countries.NAME, countries.surface_area
 FROM countries 
 WHERE population > 100000 AND surface_area < 501;
 
 -- 6 --	
 SELECT countries.name,countries.government_form,countries.capital,countries.life_expectancy
 FROM countries
 WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy> 75;
 
 -- 7 --
SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
join cities on countries.id = cities.country_id
WHERE cities.district = "Buenos Aires" AND cities.population > 500000;


-- 8 --
SELECT region, COUNT(*) AS number_countries
FROM countries
GROUP BY region
ORDER BY number_countries DESC;





