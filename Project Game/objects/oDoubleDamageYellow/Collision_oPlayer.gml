_player = instance_nearest(x,y,oPlayer);
_player.damage *= 2;
_player.double_damage = true;
audio_play_sound(sfxPickUpBad, 10, false);
instance_create_depth(x, y, 0, oDoubleDamageYellowCh);
instance_destroy(self);
