// this is edited create_explosion script for AI purposes

// if there is no hard wall in the way
if !place_meeting(argument0,argument1,wall)
    {
    // if a bomb is there
    if place_meeting(argument0,argument1,bomb)
      {
      // explosion cycle is stopped
      return 0;
      }
      else
    // if there is a soft block
    if place_meeting(argument0,argument1,softblock)
      {
      // depending on type of the explosion, continue or stop the cycle
      if type=2 or type=3
      return 1;
      else
      return 0;
      }
      else
    // item in the way?
    if place_meeting(argument0,argument1,item_obj)
      {
      // depending on type of the explosion, continue or stop the cycle
      if type=2 or type=3
      return 1;
      else
      return 0;
      }
      else
      {
      // place the detector
      chk[pp]=instance_create(argument0,argument1,notsafe_place);
      pp+=1;
      pu+=1;
      // continue the cycle
      return 1;
      }
    }
    else
    {
    // stop the cycle
    return 0;
    }