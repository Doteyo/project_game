_player = instance_nearest(x,y,oPlayer);
_player.hp += 40;
audio_play_sound(sfxPickUp, 10, false);
if (_player.hp > _player.maxhp) _player.hp = _player.maxhp;
instance_destroy(self);     