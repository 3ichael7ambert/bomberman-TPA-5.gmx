// if player was invincible, stop
if invincible>0 exit;
// if player had rui
if rui!=0
  {
  // then kill it, not player
  th=instance_create(x,y,rui_dead);
  th.rui=rui;
  // make player jump off it
  spr=3;
  img=24;
  // and he doesn't have rui anymore
  rui=0;
  // make player invincible for 2 seconds
  invincible=120;
  }
  // but if player didn't have rui...
  else
  {
// throw the powerups to the map
repeat(bmbbombs)
  {
  th=instance_create(x,y,item_randompos);
  th.item=0;
  }
repeat(bmbfire)
  {
  th=instance_create(x,y,item_randompos);
  th.item=1;
  }
if bmbspeed>5
repeat(bmbspeed-5)
  {
  th=instance_create(x,y,item_randompos);
  th.item=2;
  }
if bmbbombtype=1 or bmbbombtype=3
  {
  th=instance_create(x,y,item_randompos);
  th.item=7;
  }
if bmbbombtype=2 or bmbbombtype=3
  {
  th=instance_create(x,y,item_randompos);
  th.item=10;
  }
if bmbbombthru=1
  {
  th=instance_create(x,y,item_randompos);
  th.item=8;
  }
if bmbbombthru=-1
  {
  th=instance_create(x,y,item_randompos);
  th.item=4;
  }
if bmbtoss=1
  {
  th=instance_create(x,y,item_randompos);
  th.item=5;
  }
if bmbpunch=1
  {
  th=instance_create(x,y,item_randompos);
  th.item=6;
  }
if bmbsoftthru=1
  {
  th=instance_create(x,y,item_randompos);
  th.item=10;
  }
// and kill the player
th=instance_create(x,y,bomberman_dead);
th.pid=pid;
instance_destroy();
}