_player = instance_nearest(x,y,oPlayer);
_player.damage *= 2;
audio_play_sound(sfxPickUp, 10, false);
instance_create_depth(x, y, 0, oDamageBonusCh);
instance_destroy(self);
