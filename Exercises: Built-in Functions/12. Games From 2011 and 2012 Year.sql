select date_format(start, '%Y-%m-%d') from games;

select name, date_format(start, '%Y-%m-%d') as start from games
where extract(year from start) >= 2011 and extract(year from start) <= 2012
order by start, name
limit 50;