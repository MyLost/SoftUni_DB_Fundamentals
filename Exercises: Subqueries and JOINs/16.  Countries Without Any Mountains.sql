SELECT count(c.country_code)
FROM countries AS c
LEFT JOIN mountains_countries AS m on c.country_code = m.country_code
WHERE m.mountain_id IS NULL;