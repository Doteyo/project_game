_player = instance_nearest(x,y,oPlayer);
_player.damage = 3;
instance_create_depth(x, y, 0, oDamageBonusRedCh);
instance_destroy(self);
