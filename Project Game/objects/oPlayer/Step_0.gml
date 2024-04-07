  /// @description Вставьте описание здесь


// Inputs
var _keyright = keyboard_check(ord("D"));
var _keyleft = keyboard_check(ord("A"));
var _keyup = keyboard_check(ord("W"));
var _keydown = keyboard_check(ord("S"));

//Move Directions
var _move_x = (_keyright - _keyleft) * movespd;
var _move_y = (_keydown - _keyup) * movespd;


// Horizontal Collisions
if (place_meeting(x + _move_x,y,oWall)) {
     while (!place_meeting(x+sign(_move_x),y,oWall)) {
        x+=sign(_move_x);
     }
     _move_x = 0;
}
x+=_move_x

// Vertical Collisions
if (place_meeting(x,y+ _move_y,oWall)) {
     while (!place_meeting(x,y+sign(_move_y),oWall)) {
        y+=sign(_move_y);
     }
     _move_y = 0;
}
y+=_move_y

x=clamp(x, 8, room_width-8);
y=clamp(y, 14, room_height-14);


if mouse_check_button_pressed(mb_left) {
    var _bullet_id = instance_create_depth(x, y, 10, oPBullet);
    _bullet_id.direction = 90;
}

if hp <= 0
	instance_destroy(self);