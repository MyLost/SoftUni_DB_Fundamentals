select * from towns where
`name` not like 'R%' and
`name` not like 'B%' and
`name` not like 'D%'
order by name;