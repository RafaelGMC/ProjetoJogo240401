// Evento de colisão entre o objeto do jogador e o inimigo
if (alarm[0] < 0) 
{
        // Armazenar a cor original do jogador
		_cor_original = image_blend;

        // Definir a cor para vermelho para mostrar o jogador
        image_blend = $FF0000FF & $ffffff;
       image_alpha = ($FF0000FF >> 24) / $ff;

        // Configurar alarme 0 para 30 steps a 60fps (0.5 segundo)
        alarm[0] = 30;
		obj_screenshake.valor += 10;
		obj_screenshake.ang += 2;		
}

if (global.cont_vidas <= 1)
{
	instance_destroy(other);
	room_restart();
	global.cont_vidas = 100;
	global.cont_itens = 0;
	global.cont_chaves = 0;
	global.cont_chances -= 1;
	
	if (global.cont_chances == 0)
	{
		game_restart();
		global.cont_chances = 3;
	}

} else {
	global.cont_vidas -= 1;	
}




