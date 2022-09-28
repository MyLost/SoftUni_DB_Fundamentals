select c.country_name, r.river_name from countries as c left join countries_rivers as cr on c.country_code = cr.country_code left join rivers as r on cr.river_id = r.id
WHERE c.continent_code = 'AF'
order by c.country_name asc
limit 5;