select starting_point as route_starting_point, end_point as route_ending_point , leader_id , concat_ws(' ', first_name, last_name) as leader_name from routes r
join campers c on r.leader_id  = c.id;