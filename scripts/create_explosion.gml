// if there is no hard wall in the way
if !place_meeting(argument0,argument1,wall)
    {
    // if a bomb is there
    if place_meeting(argument0,argument1,bomb)
      {
      // make it explode
      th=instance_place(argument0,argument1,bomb);
      th.alarm[0]=5;
      // explosion cycle is stopped
      return 0;
      }
      else
    // if there is a soft block
    if place_meeting(argument0,argument1,softblock)
      {
      // destroy it
      th=instance_place(argument0,argument1,softblock);
      th.image_speed=0.2;
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
      // destroy it
      th=instance_place(argument0,argument1,item_obj);
      with(th) instance_destroy();
      // create a little boom on it's place
      instance_create(argument0,argument1,burnt_item_obj);
      // depending on type of the explosion, continue or stop the cycle
      if type=2 or type=3
      return 1;
      else
      return 0;
      }
      else
      {
      // create a proper explosion
      th=instance_create(argument0,argument1,explosion);
      // choose it's image
      if i=firepower
        th.typ=argument3;
        else
        th.typ=argument2;
      // depending on type of the explosion, choose it's sprite
      if type=2 or type=3
      th.sprite_index=superexp_spr;
      // continue the cycle
      return 1;
      }
    }
    else
    {
    // stop the cycle
    return 0;
    }