// green rui has ability to run very quickly until it hit the wall
if rui=2
  {
  spr=4;
  }
// purple rui can drop bomb lines
if rui=3
  {
  show_message(string(bmbbombs));
  // left
  if dir=3
  for(i=0; i<=99; i+=1)
    {
    if !create_bombline(round(x/16)*16-i*16,round(y/16)*16) break;
    }
  // right
  if dir=1
  for(i=0; i<=99; i+=1)
    {
    if !create_bombline(round(x/16)*16+i*16,round(y/16)*16) break;
    }
  // down
  if dir=0
  for(i=0; i<=99; i+=1)
    {
    if !create_bombline(round(x/16)*16,round(y/16)*16+i*16) break;
    }
  // up
  if dir=2
  for(i=0; i<=99; i+=1)
    {
    if !create_bombline(round(x/16)*16,round(y/16)*16-i*16) break;
    }
  }
// blue rui has ability to punch without powerups
if rui=0 and bmbpunch=1 or rui=1
  {
  sum=0;
  if place_meeting(round(x/16)*16,round(y/16)*16,bomb)
    th=instance_place(round(x/16)*16,round(y/16)*16,bomb);
    else
    th=0;
  if sdir=0
    {
    tx=round(x);
    ty=y+16;
    txx=tx;
    tyy=round(ty/16)*16;
    }
  if sdir=1
    {
    tx=x+16;
    ty=round(y);
    txx=round(tx/16)*16;
    tyy=ty;
    }
  if sdir=2
    {
    tx=round(x);
    ty=y-16;
    txx=tx;
    tyy=round(ty/16)*16;
    }
  if sdir=3
    {
    tx=x-16;
    ty=round(y);
    txx=round(tx/16)*16;
    tyy=ty;
    }
  if place_meeting(txx,tyy,bomb)
    {
    th2=instance_place(txx,tyy,bomb);
    //if th2!=th
    //  {
      with(th2)
        {
        th=instance_create(x,y,bouncinbomb);
        if other.sdir=0 th.vspeed=2;
        if other.sdir=1 th.hspeed=2;
        if other.sdir=2 th.vspeed=-2;
        if other.sdir=3 th.hspeed=-2;
        th.type=type;
        th.toalarm=alarm[0];
        th.firepower=firepower;
        th.owner=owner;
        th.frame=35;
        instance_destroy();
        }
      spr=2;
      img=0;
    //  }
    }
  }