//desenhando o contador de itens coletados
draw_sprite(spr_item, 0, 11, 8);
draw_set_font(fnt_brush);
draw_set_color(c_aqua)
draw_text(15,5, "x" + string(global.cont_itens));

//desenhando o contador de chaves coletadas
draw_sprite(spr_chave, 0, 45, 10);
draw_set_font(fnt_brush);
draw_set_color(c_aqua)
draw_text(51, 7, "x" + string(global.cont_chaves));


//resetando a font e a cor
draw_set_color(c_white);
draw_set_font(-1);	
