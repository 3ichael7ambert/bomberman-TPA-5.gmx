// if the escape from the bomb blast is possible, return 1, if not, return 0
// it will also set the escapex and escapey values
// argument0 and argument1 should be x and y in cells
// if argument2 is 1, it will check some cells as dangerous

mx=argument0;
my=argument1;
escapex=-1;
escapey=-1;

// create a grid for checks
grid=ds_grid_create(room_width/16,room_height/16);

// check the cell from arguments as a dangerous one
ds_grid_set(grid,argument0,argument1,2);

// if argument2 is 1, treat some cells as dangerous (it should be
// always done before laying a bomb)
/*if argument2=1
  {
  for(i=1; i<=obj.bmbfire; i+=1)
    {
    if !instance_place((argument0+i)*16,argument1*16,wall)
    or !instance_place((argument0+i)*16,argument1*16,softblock)
    ds_grid_set(grid,argument0+i,argument1,4);
    if !instance_place((argument0-i)*16,argument1*16,wall)
    or !instance_place((argument0-i)*16,argument1*16,softblock)
    ds_grid_set(grid,argument0-i,argument1,4);
    if !instance_place(argument0*16,(argument1+i)*16,wall)
    or !instance_place(argument0*16,(argument1+i)*16,softblock)
    ds_grid_set(grid,argument0,argument1+i,4);
    if !instance_place(argument0*16,(argument1-i)*16,wall)
    or !instance_place(argument0*16,(argument1-i)*16,softblock)
    ds_grid_set(grid,argument0,argument1-i,4);
    }
  }*/

// check the cells around
ai_escape_cell(argument0+1,argument1,1);
ai_escape_cell(argument0-1,argument1,3);
ai_escape_cell(argument0,argument1+1,0);
ai_escape_cell(argument0,argument1-1,2);

// destroy the grid for checks
ds_grid_destroy(grid);


if escapex=-1 and escapey=-1
  return 0;
  else
  return 1;