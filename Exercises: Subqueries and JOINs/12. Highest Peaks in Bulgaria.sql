select c.country_code, mountain_range, peak_name, elevation from countries as c join mountains_countries as mc on c.country_code = mc.country_code join mountains as m on mc.mountain_id = m.id join peaks as p on m.id = p.mountain_id
where c.country_name = 'Bulgaria' and elevation > 2835
order by elevation desc;
