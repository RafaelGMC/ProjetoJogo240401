//sistema colisão
move_and_collide(velh,velv, obj_invi);

//requisitos para passar de fase
if (trosso == 4 and passa_fase != 0 and chave = 1)
{
	room_goto_next();
	passa_fase = 0;
	global.cont_itens = 0;
	global.cont_chaves = 0;
}

