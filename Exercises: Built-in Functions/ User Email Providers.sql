select
user_name,
regexp_replace(email, '.*@', '') as `email provider`
from users
order by `email provider`, user_name;