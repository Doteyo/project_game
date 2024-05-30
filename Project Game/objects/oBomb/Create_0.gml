function explode(){
	instance_destroy(self);
	instance_create_depth(x,y,10,oExplosion);
}

if (movespd==0){
	alarm[0]=4*room_speed;
}