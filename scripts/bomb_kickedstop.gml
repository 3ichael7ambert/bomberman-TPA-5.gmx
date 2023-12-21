// if bomb is bouncy
if type=1 or type=3
{
// bounce
x-=hspeed;
y-=vspeed;
speed*=-1;
}
else
{
// if not, stop
move_snap(16,16);
speed=0;
}