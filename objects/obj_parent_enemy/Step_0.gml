
//colisão horizontal e vertical


//colisão horizontal e vertical

repeat(abs(vspd))
{
	//colisão horizotal
	if (!place_meeting(x, y + sign(vspd), obj_invi))
	{
		y += sign(vspd)
	} else // está colidindo
	{
		vspd = -vspd
	}
}

