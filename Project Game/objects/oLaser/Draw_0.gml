for (var i = 0; i < len_laser; i++) {
	draw_sprite_ext(spr_laser_strip, 1, x + lengthdir_x(i, direction), y + lengthdir_y(i, direction), 1, 1, direction, c_white, 1 )
}