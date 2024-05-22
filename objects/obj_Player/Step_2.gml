//sistema colisão
move_and_collide(velh,velv, obj_invi);

//requisitos para passar de fase
if (global.cont_itens == 4 and passa_fase != 0 and global.cont_chaves == 1)
{
	room_goto_next();
	passa_fase = 0;
	global.cont_itens = 0;
	global.cont_chaves = 0;
}

// Se as vidas chegarem a zero, destruir o jogador
if (global.cont_vidas == 0)
{
    instance_destroy(obj_player);
}

