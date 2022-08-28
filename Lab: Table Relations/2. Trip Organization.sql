select driver_id, vehicle_type, concat_ws(' ', first_name, last_name) as driver_name from vehicles v
join campers as c on v.driver_id = c.id;