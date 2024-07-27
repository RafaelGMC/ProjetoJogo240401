//evento de desenhar GUI
//configura a fonte e a sua cor
draw_set_font(fnt_brush);
draw_set_color(c_white);

// Verifica se o turbo está ativado e desenha o texto correspondente
if (alarm[1] > 0) 
{	
	if (_sob_efeito_pocao_amarela)
	{
		//desenhando o mostrador de turbo
		draw_set_color(c_yellow)
		draw_text(1000, 20, "Turbo");
	    draw_set_color(c_green); // Turbo está ativado, portanto, cor verde
	 	draw_text(1100, 20, "ON");
	}
	if (_sob_efeito_pocao_verde)
	{
		//desenhando o mostrador de INVULNERABILIDADE
		draw_set_color(c_yellow)
		draw_text(930, 20, "Invulnerabilidade");
	    draw_set_color(c_green); // Turbo está ativado, portanto, cor verde
	 	draw_text(1192, 20, "ON");
	}	
	
    // Desenha o tempo restante apenas quando o turbo está ativado
    if (alarm[1] <= 3 * room_speed) 
	{		
		draw_set_color(c_red); // Altere a cor para vermelho quando restarem 3 segundos ou menos				
    } else {		
        draw_set_color(c_white); // Mantenha a cor branca para o resto do tempo			
    }	
	
    draw_text(940, 52, "Tempo restante: " + string(alarm[1] div room_speed));
	
} 
//resetadno a fonte e a sua cor
draw_set_font(fnt_brush);
draw_set_color(c_white);