// Evento Step do obj_inventario
// Abrir/fechar o inventário com a tecla "I"
if (keyboard_check_pressed(ord("I"))) {
    inventory_visible = !inventory_visible;
}

// Navegar no inventário
if (inventory_visible) {
    if (keyboard_check_pressed(vk_right)) {
        if (is_talisman_selected) {
            selected_talisman_index = (selected_talisman_index + 1) mod 4;
        } else {
            selected_index = (selected_index + 1) mod inventory_size;
        }
    } else if (keyboard_check_pressed(vk_left)) {
        if (is_talisman_selected) {
            selected_talisman_index = (selected_talisman_index - 1 + 4) mod 4;
        } else {
            selected_index = (selected_index - 1 + inventory_size) mod inventory_size;
        }
    } else if (keyboard_check_pressed(vk_down)) {
        if (!is_talisman_selected && selected_index >= inventory_size - 5) {
            // Move to talisman slots
            is_talisman_selected = true;
            selected_talisman_index = 0;
        } else {
            if (is_talisman_selected) {
                // Stay in talisman slots (no down navigation needed)
                selected_talisman_index = selected_talisman_index; // Do nothing
            } else {
                selected_index = (selected_index + 5) mod inventory_size;
            }
        }
    } else if (keyboard_check_pressed(vk_up)) {
        if (is_talisman_selected) {
            // Move back to inventory slots
            is_talisman_selected = false;
        } else {
            selected_index = (selected_index - 5 + inventory_size) mod inventory_size;
        }
    }

    // Selecionar item com a tecla "C"
    if (keyboard_check_pressed(ord("C"))) {
        if (is_talisman_selected) {
            // Usar talismã
            var selected_talisman = talismans[selected_talisman_index];
            if (selected_talisman != -1) {
                // Use o talismã (implementar lógica específica)
                show_message("Usando o talismã: " + string(selected_talisman));
                // Remover o talismã do inventário após uso (opcional)
                talismans[selected_talisman_index] = -1;
            }
        } else {
            // Usar item do inventário
            var selected_item = inventory[selected_index];
            if (selected_item != -1) {
                // Use o item (implementar lógica específica)
                show_message("Usando o item: " + string(selected_item));
                // Remover o item do inventário após uso (opcional)
                inventory[selected_index] = -1;
            }
        }
    }
}
