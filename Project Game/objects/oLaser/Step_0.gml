<<<<<<< Updated upstream
if (keyboard_check(ord("Q"))) {
	image_angle += 5;
	create_laser();
=======
if (go) {
	for (var i = 0; i < max_length; i++) {
		current_x = x + lengthdir_x(i, direction);
		current_y = y + lengthdir_y(i, direction);
	
		len_laser = i;
	
		if (collision_point(current_x, current_y, oWall, 0, 0)) {
			break;	
		}
	}
	var _list = ds_list_create();
	var a = sin(direction) * 16;
	var b = cos(direction) * 16;
	var _num = collision_line_list(x - a, y - b, current_x - a, current_y - b, oPlayer, false, true, _list, false);
	_num += collision_line_list(x + a, y + b, current_x + a, current_y + b, oPlayer, false, true, _list, false);
	if _num > 0
	{
		for (var i = 0; i < _num; ++i;)
		{
			_list[| i].take_damage(1, true);
			//show_debug_message(_list[| i].hp);
		}
	}
	ds_list_destroy(_list);
>>>>>>> Stashed changes
}




