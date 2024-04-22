if point_distance(x, y, x_pos, y_pos) > movespd {
   move_towards_point( x_pos, y_pos, movespd);
}
else{
	movespd = 0;
	alarm[0] = room_speed * 2;
}