// Evento Step do obj_player

// Pegando inputs do usuário

down = keyboard_check(vk_down) || keyboard_check(ord("S"));
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));





// Evento Step do obj_player
// Verificar colisão com itens
if (place_meeting(x, y, obj_item)) {
    var item = instance_place(x, y, obj_item);
    if (item != noone) {
        // Obter a instância do obj_inventario
        var inventory_obj = instance_find(obj_inventario, 0);
        if (inventory_obj != noone) {
            if (inventory_obj.add_item_to_inventory(item.sprite_index)) {
                // Item adicionado ao inventário, destruir o item na sala
                instance_destroy(item);
            } else {
                // Inventário cheio, exibir mensagem
                show_message("Inventário cheio!");
            }
        }
    }
}

// Chama a função que roda o estado atual
roda_estado();