_player = instance_nearest(x,y,oPlayer);
_player.double_damage = true;
audio_play_sound(sfxPickUpBad, 10, false);
instance_create_depth(x, y, 0, oDoubleDamageCh);
instance_destroy(self);

