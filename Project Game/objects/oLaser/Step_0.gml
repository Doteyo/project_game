for (var i = 0; i < max_length; i++) {
	current_x = x + lengthdir_x(i, direction);
	current_y = y + lengthdir_y(i, direction);
	
	len_laser = i;
	
	if (collision_point(current_x, current_y, oWall, 0, 0)) {
		break;	
	}
}
