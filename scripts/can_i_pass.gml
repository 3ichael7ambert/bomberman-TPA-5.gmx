// this function should be used ONLY in object bomberman_parent

// check if there is a hard wall
if !place_meeting(argument0,argument1,wall)
  {
  // if there is a bomb and bomberman can't pass thru them
  if bmbbombthru!=1 and place_meeting(argument2,argument3,bomb)
    {
    // compare the bomb object
    th=instance_place(round(x/16)*16,round(y/16)*16,bomb);
    th2=instance_place(argument2,argument3,bomb);
    // if it's not the same bomb that bomberman is standing on (if he is)
    if th!=th2
      {
      // if the bomberman has bomb kick item
      if bmbbombthru=-1 and th2.speed=0
        {
        // kick the bomb
        if y<th2.y th2.vspeed=2;
        if y>th2.y th2.vspeed=-2;
        if x<th2.x th2.hspeed=2;
        if x>th2.x th2.hspeed=-2;
        // to enable kicked bomb stopping
        th2.kickedby=pid;
        // bugproof
        with(th2) move_snap(16,16);
        move_snap(16,16);
        // bomberman can't pass
        return 0;
        }
        else
        return 0;
      }
    }
  // if there is a soft block and bomberman can't pass them, then he can't pass ;p
  if bmbsoftthru=0 and place_meeting(argument0,argument1,softblock)
    return 0;
    else
    return 1;
  }
  else
  return 0;