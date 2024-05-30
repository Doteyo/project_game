current_x = 0;
current_y = 0;
len_laser = 0;
strips = []
colide = false;
direction = image_angle;
alarm[0] = room_speed;

function create_laser() {	
	for (var i = 0; i < max_length; i++) {
		current_x = x + lengthdir_x(i, image_angle);
		current_y = y + lengthdir_y(i, image_angle);
		laser_strip = instance_create_depth(current_x, current_y, -1, oLaserStrip, {image_angle: self.image_angle})
		wall = instance_nearest(current_x,current_y,oWall);
		//if (abs(wall.x + 11.31 - current_x) < 16 && abs(wall.y + 11.31 - current_y) < 16) break;
		if (abs(wall.x + 11 - current_x) < 16 && abs(wall.y + 11 - current_y) < 16) {
			//part_particles_create(oParticalSetup.particalSystem, current_x, current_y, oParticalSetup.parcticalHit, 1);
			//part_particles_create(oParticalSetup.particalSystem, current_x, current_y, oParticalSetup.parcticalSpark, 10);
			break;			
		}
		array_push(strips, laser_strip);
	}
}

function delete_laser() {
	array_foreach(strips, function(x) {instance_destroy(x)});
}


