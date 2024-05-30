function defeated(){
	image_blend = c_yellow;
	alarm[0] = room_speed * 3;
}

image_blend = c_black;
var _weak_points = [[-8,56],[24,56],[56,56]];

for(var i = 0; i<array_length(_weak_points); i++){
	instance_create_depth(x+_weak_points[i][0],y+_weak_points[i][1],10,oBoss_normal_weak, {hp:hp_max/array_length(_weak_points)})
}

hp = hp_max;

function take_damage(_damage){
	hp -= _damage;
	if hp <= 0
		defeated();
}