if (inventory_visible) {
    // Dimensões da tela
    var screen_width = 1366;
    var screen_height = 768;

    // Calcula a posição inicial do inventário na tela
    var inv_start_x = (screen_width - (slot_width * inventory_scale * 5)) / 2;
    var inv_start_y = (screen_height - (slot_height * inventory_scale * 6)) / 2; // Ajustado para 6 linhas de slots + 1 linha para talismãs

    // Define a cor da moldura
    var frame_color = make_color_rgb(139, 69, 19); // Marrom

    // Define a espessura da moldura
    var frame_thickness = 10;

    // Desenha a moldura do inventário
    draw_set_color(frame_color);
    draw_rectangle(inv_start_x - frame_thickness, inv_start_y - frame_thickness, 
                   inv_start_x + (slot_width * inventory_scale * 5) + frame_thickness, 
                   inv_start_y + (slot_height * inventory_scale * 7) + frame_thickness, 
                   false); // false para preencher o retângulo

    // Desenha os slots do inventário
    for (var j = 0; j < inventory_size; j++) {
        var inv_x = inv_start_x + (j % 5) * slot_width * inventory_scale;
        var inv_y = inv_start_y + floor(j / 5) * slot_height * inventory_scale;

        // Desenha a sprite da moldura do slot
        draw_sprite_ext(sprite_slot_frame, 0, inv_x, inv_y, inventory_scale, inventory_scale, 0, c_white, 1);

        // Desenha um indicador de seleção no slot selecionado (destaque)
        if (!is_talisman_selected && j == selected_index) {
            draw_sprite_ext(spr_slot_frame_moldura, 0, inv_x, inv_y, inventory_scale, inventory_scale, 0, c_black, 1);
        }

        // Desenha a sprite do item se houver um item no slot
        if (inventory[j] != -1) {
            draw_sprite_ext(inventory[j], 0, inv_x, inv_y, inventory_scale, inventory_scale, 0, c_white, 1);
        }
    }

    // Desenha os slots dos talismãs
    for (var t = 0; t < 4; t++) {
        var talisman_x = inv_start_x + t * slot_width * inventory_scale;
        var talisman_y = inv_start_y + 6 * slot_height * inventory_scale; // Na linha 6

        // Desenha a sprite da moldura do slot dos talismãs
        draw_sprite_ext(sprite_talisman_frame, 0, talisman_x, talisman_y, inventory_scale, inventory_scale, 0, c_white, 1);

        // Desenha a sprite do talismã se houver um item no slot
        if (talismans[t] != -1) {
            draw_sprite_ext(talismans[t], 0, talisman_x, talisman_y, inventory_scale, inventory_scale, 0, c_white, 1);
        }

        // Desenha um indicador de seleção no talismã selecionado (destaque)
        if (is_talisman_selected && t == selected_talisman_index) {
            draw_sprite_ext(spr_slot_frame_moldura, 0, talisman_x, talisman_y, inventory_scale, inventory_scale, 0, c_black, 1);
        }
    }
}
