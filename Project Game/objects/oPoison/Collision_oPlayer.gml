   /// @description 
var _player = instance_nearest(x,y,oPlayer);
_player.take_damage(damage_arr[_player.poison], false)
_player.movespd = _player.maxspd * slow_arr[_player.poison];
_player.cure_poison();
instance_destroy(self);         