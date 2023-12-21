// bomberman can't carry anything while on rui
if rui!=0 exit;
// if not carrying anything and got tossing abillity
if carry=0 and bmbtoss=1
  {
  // if there is a bomb under feet
  if place_meeting(round(x/16)*16,round(y/16)*16,bomb)
    {
    // get it's id
    th=instance_place(round(x/16)*16,round(y/16)*16,bomb)
    // take it
    carry=1;
    // get data from it
    carryfirepower=th.firepower;
    carrytoalarm=th.alarm[0];
    carrytype=th.type;
    carryowner=th.owner;
    // destroy the object of bomb
    with(th) instance_destroy();
    }
  }