// don't use and don't delete this script.

if escapex!=-1 and escapey!=-1 exit;
punchable=0;
if obj.rui=0 and obj.bmbpunch=1 punchable=1;
if obj.rui=1 punchable=1;

a=0;
if ds_grid_get(grid,argument0,argument1)=4 a=1;
if ds_grid_get(grid,argument0,argument1)=0 a=1;
if a=1
  {
  if instance_place(argument0*16,argument1*16,wall)
    {
    ds_grid_set(grid,argument0,argument1,1);
    exit;
    }
    else
  if instance_place(argument0*16,argument1*16,softblock_child)
    {
    ds_grid_set(grid,argument0,argument1,1);
    exit;
    }
    else
  if instance_place(argument0*16,argument1*16,bomb)
    {
    if punchable=0
      {
      ds_grid_set(grid,argument0,argument1,1);
      exit;
      }
      else
      {
      ds_grid_set(grid,argument0,argument1,2);
      }
    }
    else
  if instance_place(argument0*16,argument1*16,notsafe_place)
    ds_grid_set(grid,argument0,argument1,2);
    else
    {
    if ds_grid_get(grid,argument0,argument1)=0
      {    
      ds_grid_set(grid,argument0,argument1,3);
      escapex=argument0;
      escapey=argument1;
      exit;
      }
    }
  if argument2=0
    {
    ai_escape_cell(argument0+1,argument1,1);
    ai_escape_cell(argument0-1,argument1,3);
    ai_escape_cell(argument0,argument1+1,0);
    }
  if argument2=1
    {
    ai_escape_cell(argument0,argument1-1,2);
    ai_escape_cell(argument0,argument1+1,0);
    ai_escape_cell(argument0+1,argument1,1);
    }
  if argument2=2
    {
    ai_escape_cell(argument0-1,argument1,3);
    ai_escape_cell(argument0+1,argument1,1);
    ai_escape_cell(argument0,argument1-1,2);
    }
  if argument2=3
    {
    ai_escape_cell(argument0,argument1+1,0);
    ai_escape_cell(argument0,argument1-1,2);
    ai_escape_cell(argument0-1,argument1,3);
    }
  }