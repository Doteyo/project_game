   /// @description 
var _player = instance_nearest(x,y,oPlayer);
_player.take_damage(damage_arr[clamp(_player.poison,0,4)]);
_player.movespd = _player.maxspd * slow_arr[clamp(_player.poison,0,4)];
_player.cure_poison();
instance_destroy(self);         