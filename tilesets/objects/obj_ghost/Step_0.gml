

repeat(abs(vspd))
{
	//colisão vertical
	if (!place_meeting(x, y + sign(vspd), obj_invi))
	{
		y += sign(vspd)
	} else // está colidindo
	{
		vspd = -vspd 
	}
}
