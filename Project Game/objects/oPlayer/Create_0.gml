function take_damage(damage, is_laser) {
	if (!is_invinsible) {
		hp -= damage;
		if (!is_laser) {
			become_invisible(true);
			alarm[0] = room_speed;
		}
	}
}


function become_invisible(flag) {
	if (flag) {
		is_invinsible = true;
		image_blend = c_black;
	}
	else {
		is_invinsible = false;
		image_blend = c_white;
	}
}
   
function cure_poison() {
	poison += 1;
	alarm[1] = room_speed * 10;
}

function stop_shoot() {
	cannot_shoot = true;
	alarm[2] = room_speed * 10;
}