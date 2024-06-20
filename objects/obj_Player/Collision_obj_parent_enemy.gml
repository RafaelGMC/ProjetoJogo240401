// Evento de colisão entre o objeto do jogador e o inimigo
if (alarm[0] < 0) 
{
	// Armazenar a cor original do jogador
	_cor_original = image_blend;
		
	if (!_sob_efeito_pocao_verde)
	{
        // Definir a cor para vermelho para mostrar o jogador
		image_blend = $FF0000FF & $ffffff;
        image_alpha = ($FF0000FF >> 24) / $ff;
	}
		//vibração na tela no caso de colisão com inimigo		
		obj_screenshake.valor += 10;
		obj_screenshake.ang += 2;

        // Configurar alarme 0 para 30 steps a 60fps (0.5 segundo)
		alarm[0] = 30;	
}

// Verificação se o jogador recebeu dano
if (global.cont_saude <= 0 && global.cont_vidas > 0)
{
    // Reiniciar a room
    room_restart();

    // Se a saúde chegar a zero...
    global.cont_vidas -= 1;
    
    // Restaurar saúde, itens e chaves
    global.cont_saude = 100;
    global.cont_itens = false;
    global.cont_chaves = false;
}     
else
{
	if (!_sob_efeito_pocao_verde)
	{
    // Verificar se o jogador está sob o efeito da poção verde
    global.cont_saude -= 1;
	}
}





