_player = instance_nearest(x,y,oPlayer);
_player.movespd = 3;
instance_create_depth(x, y, 0, oSlowBonusCh);
instance_destroy(self);