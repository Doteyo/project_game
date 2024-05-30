show_debug_message("destroy");
_player = instance_nearest(x,y,oPlayer);
if (_player != noone) {
	_player.damage = 5;
	_player.double_damage = false;
}
instance_destroy(self);
