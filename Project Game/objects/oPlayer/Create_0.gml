function take_damage(damage, is_laser) {
	if (!is_invinsible) {
		hp -= damage;
		if hp <= 0
			instance_destroy(self);
		if (!is_laser) {
			become_invisible(true);
			alarm[0] = room_speed*inv_time;
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
                  