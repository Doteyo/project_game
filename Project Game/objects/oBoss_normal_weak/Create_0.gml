function take_damage(_damage){
	var boss = instance_nearest(x,y,oBoss_normal_main);
	_deal = _damage;
	if hp - _damage < 0
		_deal = hp;
	
	boss.hp -= _deal;
	
	boss.image_blend = make_color_rgb(255 - (boss.hp/boss.hp_max)*255,0,0);
	
	if _deal == hp{
		boss.num_weak -= 1;
		if boss.num_weak == 0{
			boss.is_defeated = true;
			boss.defeated();
		}
		instance_destroy(self);
	}
		
	else
		hp -= _deal;
}

instance_nearest(x,y,oBoss_normal_main).num_weak += 1;