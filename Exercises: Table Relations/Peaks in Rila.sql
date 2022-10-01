select mountain_range, peak_name, elevation as peak_elevation from peaks p join mountains m on p.mountain_id = m.id
where m.mountain_range = 'Rila'
order by elevation desc;
