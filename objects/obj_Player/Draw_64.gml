
draw_set_font(fnt_brush);
draw_set_color(c_white);

// Verifica se o turbo está ativado e desenha o texto correspondente
if (alarm[1] > 0) {
    draw_set_color(c_green); // Turbo está ativado, portanto, cor verde
    draw_text(595, 20, "ON");
    
    // Desenha o tempo restante apenas quando o turbo está ativado
    if (alarm[1] <= 3 * room_speed) {
        draw_set_color(c_red); // Altere a cor para vermelho quando restarem 3 segundos ou menos
    } else {
        draw_set_color(c_white); // Mantenha a cor branca para o resto do tempo
    }
    draw_text(488, 52, "Tempo restante: " + string(alarm[1] div room_speed));
} else 
{
	draw_set_color(c_red); // Turbo está off, portanto, cor vermelha
    draw_text(595, 20, "OFF");
}