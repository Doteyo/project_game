function defeated(){
	image_blend = c_yellow;
	alarm[0] = room_speed * 3;
}

image_blend = c_black;
instance_create_depth(x-8,y+56,10,oBoss_normal_weak)
instance_create_depth(x+56,y+56,10,oBoss_normal_weak)
hp = hp_max;