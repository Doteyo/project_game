function take_damage(_damage){
	var boss = instance_nearest(x,y,oBoss_normal_main);
	if _damage >= hp{
		boss.image_blend = make_color_rgb(255 - ((boss.hp-hp)/boss.hp_max)*255,0,0);
		boss.take_damage(hp);
		instance_destroy(self);
	}
	else{
		boss.image_blend = make_color_rgb(255 - ((boss.hp-_damage)/boss.hp_max)*255,0,0);
		boss.take_damage(_damage);
		hp -= _damage;
	}
}