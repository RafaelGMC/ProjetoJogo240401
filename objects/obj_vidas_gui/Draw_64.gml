//desenhando o contador de chaves coletadas
draw_sprite(spr_heart, 0, 77, 10);
draw_set_font(fnt_brush);
draw_set_color(c_aqua)
draw_text(82, 7, "x" + string(global.cont_vidas) );


draw_set_color(c_white);
draw_set_font(-1);	