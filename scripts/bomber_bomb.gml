// if no bomb or soft block is under feet
 if !place_meeting(argument0,argument1,bomb)
and !place_meeting(argument0,argument1,softblock)
and carry=0
  {
  // and bomberman can place a bomb
  if bmbbombs>0
    {
    // play a sound
    sound_play(bomb_place_snd);
    // can set 1 bomb less
    bmbbombs-=1;
    // place the bomb
    th=instance_create(argument0,argument1,bomb);
    // give data to it
    th.type=bmbbombtype;
    th.firepower=bmbfire;
    th.owner=pid;
    th.alarm[0]=180;
    }
  }