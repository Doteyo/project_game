_player = instance_nearest(x,y,oPlayer);
_player.damage *= 2;
instance_create_depth(x, y, 0, oDamageBonusCh);
instance_destroy(self);
