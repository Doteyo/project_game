_player = instance_nearest(x,y,oPlayer);
_player.movespd = 3;
audio_play_sound(sfxPickUpBad, 10, false);
instance_create_depth(x, y, 0, oSlowBonusCh);
instance_destroy(self);