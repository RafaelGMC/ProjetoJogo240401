var_resul = coli mod 2

repeat (abs(hspd))
{
	//colisão horizotal
	if (!place_meeting(x + sign(hspd), y, obj_invi))
	{
		x += sign(hspd)	

	} else // está colidindo
	{	
		coli++
		hspd = -hspd 
		
	}	
		
}


if var_resul != 0 
{ 
	sprite_index = spr_ghost_blue_lado	
	
} else 
{
	sprite_index = spr_ghost_blue
}



