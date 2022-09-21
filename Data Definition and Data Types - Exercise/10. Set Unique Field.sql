alter table minions.users 
drop primary key,
add primary key(`id`),
add unique(`username`);