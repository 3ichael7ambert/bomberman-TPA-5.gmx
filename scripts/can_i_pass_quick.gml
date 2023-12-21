// this is for quick checking (for every object)

// check if there is a hard wall or soft wall
if place_meeting(argument0,argument1,wall) or place_meeting(argument0,argument1,softblock)
  return 0;
  else
  return 1;