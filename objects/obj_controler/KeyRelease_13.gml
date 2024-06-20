/// @description Reiniciando o jogo
if (gameover_seq)
{
	game_restart();
	gameover_seq = noone;
	global.cont_itens = 0;
	global.cont_chaves = 0;
	global.cont_saude = 100;
	global.cont_vidas = 3;
	global.item1 = false;
	global.item2 = false;
	global.item3 = false;
	global.item4 = false;
	global.chave = false;
}


