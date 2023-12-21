// if carryin something
if carry=1
  {
  // play the sound
  sound_play(throw_snd);
  // create a throwed bomb
  th=instance_create(round(x/16)*16,round(y/16)*16,bouncinbomb);
  // put data into it
  th.frame=10;
  th.type=carrytype;
  th.firepower=carryfirepower;
  th.owner=carryowner;
  th.toalarm=carrytoalarm;
  // depending on direction of bomberman, choose the direction of bomb's flight
  if sdir=0 th.vspeed=2;
  if sdir=1 th.hspeed=2;
  if sdir=2 th.vspeed=-2;
  if sdir=3 th.hspeed=-2;
  // bomberman isn't carrying the bomb
  carry=0;
  }