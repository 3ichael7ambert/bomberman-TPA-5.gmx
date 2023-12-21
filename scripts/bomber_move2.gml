// this is the worst script in the whole example and i won't comment it.
if canwalk=1
{
if argument0=0
  {
  tx=round(x);
  ty=y+get_speed(bmbspeed);
  txx=tx;
  tyy=ceil(ty/16)*16;
  }
if argument0=1
  {
  tx=x+get_speed(bmbspeed);
  ty=round(y);
  txx=ceil(tx/16)*16;
  tyy=ty;
  }
if argument0=2
  {
  tx=round(x);
  ty=y-get_speed(bmbspeed);
  txx=tx;
  tyy=floor(ty/16)*16;
  }
if argument0=3
  {
  tx=x-get_speed(bmbspeed);
  ty=round(y);
  txx=floor(tx/16)*16;
  tyy=ty;
  }
if can_i_pass(tx,ty,txx,tyy)
  {
  wks+=get_speed(bmbspeed)/16;
  x=tx;
  y=ty;
  dir=argument0;
  sdir=dir;
  canwalk=0;
  }
  else
  {
  
if as=1 {
/*if dir mod 2=0
  {
  amg=round(y/16)*16;
  if y<amg
    ad=0;
    else
  if y=amg
    ad=argument0;
    else
    ad=2;
  }
  else
  {
  amg=round(x/16)*16;
  if x<amg
    ad=1;
    else
  if x=amg
    ad=argument0;
    else
    ad=3;
  }*/
ad=-1;
if argument0=0
  {
  tx=ceil((x)/16)*16;
  ty=y+get_speed(bmbspeed);
  txx=tx;
  tyy=ceil(ty/16)*16;
  if can_i_pass(tx,ty,txx,tyy) ad=1;
  tx=floor((x)/16)*16;
  ty=y+get_speed(bmbspeed);
  txx=tx;
  tyy=ceil(ty/16)*16;
  if can_i_pass(tx,ty,txx,tyy) ad=3;
  }
if argument0=1
  {
  tx=x+get_speed(bmbspeed);
  ty=ceil((y)/16)*16;
  txx=ceil(tx/16)*16;
  tyy=ty;
  if can_i_pass(tx,ty,txx,tyy) ad=0;
  tx=x+get_speed(bmbspeed);
  ty=floor((y)/16)*16;
  txx=ceil(tx/16)*16;
  tyy=ty;
  if can_i_pass(tx,ty,txx,tyy) ad=2;
  }
if argument0=2
  {
  tx=floor((x)/16)*16;
  ty=y-get_speed(bmbspeed);
  txx=tx;
  tyy=floor(ty/16)*16;
  if can_i_pass(tx,ty,txx,tyy) ad=3;
  tx=ceil((x)/16)*16;
  ty=y-get_speed(bmbspeed);
  txx=tx;
  tyy=floor(ty/16)*16;
  if can_i_pass(tx,ty,txx,tyy) ad=1;
  }
if argument0=3
  {
  tx=x-get_speed(bmbspeed);
  ty=floor((y)/16)*16;
  txx=floor(tx/16)*16;
  tyy=ty;
  if can_i_pass(tx,ty,txx,tyy) ad=2;
  tx=x-get_speed(bmbspeed);
  ty=ceil((y)/16)*16;
  txx=floor(tx/16)*16;
  tyy=ty;
  if can_i_pass(tx,ty,txx,tyy) ad=0;
  }
  
if ad=0
  {
  ax=round(x);
  ay=y+get_speed(bmbspeed);
  txx=ax;
  tyy=ceil(ay/16)*16;
  }
if ad=1
  {
  ax=x+get_speed(bmbspeed);
  ay=round(y);
  txx=ceil(ax/16)*16;
  tyy=ay;
  }
if ad=2
  {
  ax=round(x);
  ay=y-get_speed(bmbspeed);
  txx=floor(ay/16)*16;
  tyy=ay;
  }
if ad=3
  {
  ax=x-get_speed(bmbspeed);
  ay=round(y);
  txx=floor(ax/16)*16;
  tyy=ay;
  }

sdir=argument0;
if ad=-1 exit;
if can_i_pass(ax,ay,txx,tyy)
  {
  wks+=get_speed(bmbspeed)/16;
  x=ax;
  y=ay;
  dir=ad;
  canwalk=0;
  }
  
  }
}
}