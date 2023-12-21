// depending on position from target, set the controls.
// argument 0 - bomb avoiding
// argument 1 - wall bombing if on the way
punchable=0;
if obj.rui=0 and obj.bmbpunch=1 punchable=1;
if obj.rui=1 punchable=1;

if round(obj.x/4)*4<aitargetx
  {
  if instance_position(ceil(obj.x/16)*16,round(obj.y/16)*16,explosion)
    {
    control_reset(player);
    exit;
    }
  if instance_position(ceil(obj.x/16)*16,round(obj.y/16)*16,notsafe_place)
  and argument0=1
    {
    control_reset(player);
    exit;
    }
  if instance_position(ceil((obj.x+4)/16)*16,round(obj.y/16)*16,softblock)
  and argument1=1
    {
    if ai_anyescapeaway(round(obj.x/16),round(obj.y/16),1)
    { global.bmb_hold[player,4]=2; aiwait=4; }
    exit;
    }
  if instance_position(ceil((obj.x+4)/16)*16,round(obj.y/16)*16,bomb)
  and argument1=1 and punchable=1
    {
    global.bmb_hold[player,6]=1; aiwait=4;
    exit;
    }

  global.bmb_hold[player,1]=2;
  }
if round(obj.x/4)*4>aitargetx
  {
  if instance_position(floor(obj.x/16)*16,round(obj.y/16)*16,explosion)
    {
    control_reset(player);
    exit;
    }
  if instance_position(floor(obj.x/16)*16,round(obj.y/16)*16,notsafe_place)
  and argument0=1
    {
    control_reset(player);
    exit;
    }
  if instance_position(floor((obj.x-4)/16)*16,round(obj.y/16)*16,softblock)
  and argument1=1
    {
    if ai_anyescapeaway(round(obj.x/16),round(obj.y/16),1)
    { global.bmb_hold[player,4]=2; aiwait=4; }
    exit;
    }
  if instance_position(floor((obj.x-4)/16)*16,round(obj.y/16)*16,bomb)
  and argument1=1 and punchable=1
    {
    global.bmb_hold[player,6]=1; aiwait=4;
    exit;
    }
  
  global.bmb_hold[player,3]=2;
  }
if round(obj.y/4)*4<aitargety
  {
  if instance_position(round(obj.x/16)*16,ceil(obj.y/16)*16,explosion)
    {
    control_reset(player);
    exit;
    }
  if instance_position(round(obj.x/16)*16,ceil(obj.y/16)*16,notsafe_place)
  and argument0=1
    {
    control_reset(player);
    exit;
    }
  if instance_position(round(obj.x/16)*16,ceil((obj.y+4)/16)*16,softblock)
  and argument1=1
    {
    if ai_anyescapeaway(round(obj.x/16),round(obj.y/16),1)
    { global.bmb_hold[player,4]=2; aiwait=4; }
    exit;
    }
  if instance_position(round(obj.x/16)*16,ceil((obj.y+4)/16)*16,bomb)
  and argument1=1 and punchable=1
    {
    global.bmb_hold[player,6]=1; aiwait=4;
    exit;
    }
  
  global.bmb_hold[player,0]=2;
  }
if round(obj.y/4)*4>aitargety
  {
  if instance_position(round(obj.x/16)*16,floor(obj.y/16)*16,explosion)
    {
    control_reset(player);
    exit;
    }
  if instance_position(round(obj.x/16)*16,floor(obj.y/16)*16,notsafe_place)
  and argument0=1
    {
    control_reset(player);
    exit;
    }
  if instance_position(round(obj.x/16)*16,floor((obj.y-4)/16)*16,softblock)
  and argument1=1
    {
    if ai_anyescapeaway(round(obj.x/16),round(obj.y/16),1)
    { global.bmb_hold[player,4]=2; aiwait=4; }
    exit;
    }
  if instance_position(round(obj.x/16)*16,floor((obj.y-4)/16)*16,bomb)
  and argument1=1 and punchable=1
    {
    global.bmb_hold[player,6]=1; aiwait=4;
    exit;
    }
  
  global.bmb_hold[player,2]=2;
  }