/*
//colisão horizontal e vertical


//colisão horizontal e vertical

repeat(abs(hspd))
{
	//colisão horizotal
	if (!place_meeting(x + sign(hspd), y, obj_invi))
	{
		x += sign(hspd)
	} else // está colidindo
	{
		hspd = -hspd
	}
}

*/