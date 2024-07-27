// scr_add_item_to_inventory.gml
/// @function add_item_to_inventory(item_sprite)
/// @description Adiciona um item ao inventário.
/// @param {sprite_index} item_sprite - A sprite do item a ser adicionado.

function add_item_to_inventory(item_sprite) {
    // Supondo que inventory_size e inventory estão no escopo global
    for (var i = 0; i < inventory_size; i++) {
        if (inventory[i] == -1) {
            inventory[i] = item_sprite;
            return true; // Item adicionado com sucesso
        }
    }
    return false; // Inventário cheio
}