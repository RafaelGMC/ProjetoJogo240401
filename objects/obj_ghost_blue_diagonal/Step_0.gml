var_resul = coli mod 2

x+=hspd
y+=vspd

if x<0
{
hspd=-hspd
image_xscale = 1;
}

if x>room_width
{
hspd=-hspd
image_xscale = -1;
}

if y<0 
{
vspd=-vspd

}

if y>room_height
{
vspd=-vspd
}


if var_resul != 0 
{ 
	sprite_index = spr_ghost_blue_lado	
	
} else 
{
	sprite_index = spr_ghost_blue
}



