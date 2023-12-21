// script not related to the example
if argument1=-1
  {
  if joystick_ypos(argument0)>=0.8
    return 1;
    else
    return 0;
  }
  else
if argument1=-2
  {
  if joystick_xpos(argument0)>=0.8
    return 1;
    else
    return 0;
  }
  else
if argument1=-3
  {
  if joystick_ypos(argument0)<=-0.8
    return 1;
    else
    return 0;
  }
  else
if argument1=-4
  {
  if joystick_xpos(argument0)<=-0.8
    return 1;
    else
    return 0;
  }
  else
  {
  if joystick_check_button(argument0,argument1)
    return 1;
    else
    return 0;
  }