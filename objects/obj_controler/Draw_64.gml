//desenhando o contador de itens coletados
draw_sprite_ext(spr_livro, 0, 40, 36, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(46,50, "x" + string(global.cont_itens));

//desenhando o contador de chaves coletadas
draw_sprite_ext(spr_chave, 0, 160, 42, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(180, 52, "x" + string(global.cont_chaves));

//desenhando o contador de saude
draw_sprite_ext(spr_player_gui, (get_timer()/1000000)*2, 280, 40, 5, 5, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(290, 54, "x" + string(global.cont_vidas)  );

//desenhando o contador de chances restantes
draw_sprite_ext(spr_heart, 0, 390, 44, 4, 4, 0, -1, 1);
draw_set_font(fnt_brush);
draw_text(400, 52, string(global.cont_saude)+ "%"  );

//resetando a font e a cor
draw_set_color(c_white);
draw_set_font(-1);


