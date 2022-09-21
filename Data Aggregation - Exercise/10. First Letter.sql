select left(first_name, 1) as first_letter from wizzard_deposits
where deposit_group like 'Troll Chest'
group by first_letter
order by first_letter asc ;
