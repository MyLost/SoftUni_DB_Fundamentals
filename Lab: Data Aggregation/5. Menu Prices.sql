select category_id, round(avg(price),2), round(min(price),2), round(max(price),2)
from products
group by category_id;