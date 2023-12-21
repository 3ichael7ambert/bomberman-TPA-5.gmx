// if there is no hard wall in the way
if !place_meeting(argument0,argument1,wall)
    {
    if place_meeting(argument0,argument1,bomb)
      {
      return 0;
      }
      else
    if place_meeting(argument0,argument1,softblock)
      {
      return 0;
      }
      else
    if place_meeting(argument0,argument1,item_obj)
      {
      return 0;
      }
      else
      {
      // create a proper explosion
      bomber_bomb(argument0,argument1);
      // continue the cycle
      return 1;
      }
    }
    else
    {
    // stop the cycle
    return 0;
    }