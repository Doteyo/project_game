show_debug_message("destroy");
_player = instance_nearest(x,y,oPlayer);
if (_player != noone) {
	_player.movespd = 5;
}
instance_destroy(self);
