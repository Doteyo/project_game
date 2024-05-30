hpbar_width = 300;
hpbar_height = 32;
hpbar_x = 20;
hpbar_y = 20;


function take_damage(damage, is_laser=false) {
	if (!is_invinsible) {
		hp -= double_damage ? damage * 2 : damage;
		if (!is_laser) {
			audio_play_sound(sfxHurt, 10, false);
			become_invisible(true);
			alarm[0] = room_speed;
		}
	}
	if hp <= 0{
		audio_play_sound(sfxFinalHit, 10, false);
		//instance_destroy(self);
		room_goto(rmMenu_lost);
		//exit;
	}
		
}


function become_invisible(flag) {
	is_invinsible = flag;
	if (flag) {
		image_blend = c_black;
	}
	else {
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
