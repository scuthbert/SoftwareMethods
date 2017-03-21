SELECT name,statecode FROM states;
SELECT * FROM counties WHERE name LIKE 'Prince%';
SELECT population_2010 FROM states RIGHT JOIN (senators) ON (senators.statecode = states.statecode) WHERE senators.name = 'Richard Lugar';
SELECT COUNT(counties.name) AS "County Count" FROM counties JOIN states ON (counties.statecode = states.statecode) WHERE states.name = "Maryland";
SELECT name FROM states ORDER BY admitted_to_union DESC LIMIT 1;
SELECT senators.name FROM senators LEFT JOIN committees ON (senators.name = committees.chairman) WHERE committees.name IS NULL AND senators.affiliation = 'D';
