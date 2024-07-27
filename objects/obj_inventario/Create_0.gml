// Tamanho do inventário (30 slots)
inventory_size = 25;
// Inicializa o array de inventário
inventory = array_create(inventory_size, -1);

// Inicializa o array de talismãs (4 slots específicos)
talismans = array_create(4, -1);

// Posição de seleção no inventário
selected_index = 0;

// Variável para controlar a visibilidade do inventário
inventory_visible = false;

// Tamanho da escala do inventário na tela (25%)
inventory_scale = 5;

// Dimensões do slot de inventário (assumindo 32x32 pixels por sprite)
slot_width = 16;
slot_height = 16;

// Índice para navegação entre inventário e talismãs
is_talisman_selected = false;
selected_talisman_index = 0;
