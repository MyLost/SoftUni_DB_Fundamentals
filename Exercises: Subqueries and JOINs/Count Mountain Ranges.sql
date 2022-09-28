select c.country_code, count(c.country_code) as mountain_range from countries as c join mountains_countries as mc on c.country_code = mc.country_code join mountains as m on mc.mountain_id = m.id
where country_name in ('United States','Russia','Bulgaria')
group by c.country_code
order by mountain_range desc;