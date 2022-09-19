ALTER TABLE minions.users 
DROP PRIMARY KEY,
add primary key pk_users(`id`, `username`); 
