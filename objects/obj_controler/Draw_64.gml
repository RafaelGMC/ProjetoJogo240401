// Desenhando o contador de itens coletados
/*draw_sprite_ext(spr_livro, (get_timer() / 1000000) * 8, 30, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(60, 50, "x" + string(global.cont_itens));*/

draw_sprite_ext(spr_item1, (get_timer() / 1000000) * 8, 20, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(60, 50, "x" + string(global.item1));

draw_sprite_ext(spr_item2, (get_timer() / 1000000) * 8, 100, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(140, 50, "x" + string(global.item2));

draw_sprite_ext(spr_item3, (get_timer() / 1000000) * 8, 180, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(220, 50, "x" + string(global.item3));

draw_sprite_ext(spr_item4, (get_timer() / 1000000) * 8, 260, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(300, 50, "x" + string(global.item4));

// Desenhando o contador de chaves coletadas
draw_sprite_ext(spr_chave, 0, 340, 20, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(380, 50, "x" + string(global.chave));

// Desenhando o contador de saúde
draw_sprite_ext(spr_player_gui, (get_timer() / 1000000) * 2, 480, 40, 5, 5, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(500, 50, "x" + string(global.cont_vidas));

// Desenhando o contador de chances restantes
var num_hearts = global.cont_saude / 10; // Supondo que cada coração representa 10% de saúde
var heart_x = 600; // Posição inicial x
var heart_y = 44; // Posição inicial y
var heart_scale = 2; // Escala do coração
for (var i = 0; i < num_hearts; i++) {
    draw_sprite_ext(spr_heart, 0, heart_x + i * (16 * heart_scale + 2), heart_y, heart_scale, heart_scale, 0, -1, 1);
}

// Resetando a fonte e a cor
draw_set_color(c_white);
draw_set_font(-1);
