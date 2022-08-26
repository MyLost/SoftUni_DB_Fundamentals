select
    `name` as game,
     case
        when hour(g.start) between 0 and 11 then 'Morning'
        when hour(g.start) between 12 and 17 then 'Afternoon'
        else 'Evening'
    end as 'Part of the day',
    case
        when g.duration <= 3 then 'Extra Short'
        when g.duration between 4 and 6 then 'Short'
        when g.duration between 7 and 10 then 'Long'
        else 'Extra Long'
    end as 'Duration'
from games as g;