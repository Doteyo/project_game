function sub_time(){
	time_left -= time_decrement;
	time_left = clamp(time_left, 0, 100000);
	is_ticked = false;
	if time_left == 0{
		instance_destroy(self);
		call_later(5,time_source_units_seconds,load_next_room);
	}
}

function load_next_room(){
	room_goto(next_room)
}