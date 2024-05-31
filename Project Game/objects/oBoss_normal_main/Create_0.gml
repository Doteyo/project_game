function defeated(){
	image_blend = c_yellow;
	alarm[0] = room_speed * 3;
	instance_destroy(instance_nearest(x,y, oTimer));
	global.next = rmFirst;
}

instance_create_depth(0,0,10,oTimer);

image_blend = c_black;
var _weak_points = [[-102,144],[-51,144],[0,144],[51,144],[102,144]];

for(var i = 0; i<array_length(_weak_points); i++){
	instance_create_depth(x+_weak_points[i][0],y+_weak_points[i][1],10,oBoss_normal_weak, {hp:hp_max/array_length(_weak_points)})
}

hp = hp_max;

function take_damage(_damage){
	hp -= _damage;
	if hp <= 0
		defeated();
}