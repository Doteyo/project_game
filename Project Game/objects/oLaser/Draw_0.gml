for (var i = 0; i < len_laser; i++) {
	draw_sprite_ext(spr_laser_strip, 1, x + lengthdir_x(i, direction), y + lengthdir_y(i, direction), 1, 1, direction, c_white, 1 )
}

for (var i = 0; i < max_length; i++) {
	current_x = x + lengthdir_x(i, direction);
	current_y = y + lengthdir_y(i, direction);
}

//var a = abs(direction) <= 180 ? sin(direction) * 16 : sin(direction) * -16;
//var b = ((abs(direction) > 90) || (abs(direction) < 270)) ? cos(direction) * 16 : cos(direction) * -16;

var a = sin(direction) * 16;
var b = cos(direction) * 16;
draw_line(x, y, current_x, current_y);
draw_line(x + a, y + b, current_x + a, current_y + b);