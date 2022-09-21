select peak_name, river_name,
concat(left(lower(peak_name), char_length(peak_name) -1), lower(river_name)) as mix
from peaks as p, rivers as r
where lower(right(peak_name, 1)) = lower(left(river_name,1))
order by mix;

