// Evento Step do obj_player

// Pegando inputs do usuário
down = keyboard_check(vk_down) || keyboard_check(ord("S"));
up = keyboard_check(vk_up) || keyboard_check(ord("W"));
right = keyboard_check(vk_right) || keyboard_check(ord("D"));
left = keyboard_check(vk_left) || keyboard_check(ord("A"));

// Atualiza a velocidade com base na entrada do jogador
velv = (down - up) * vel;
velh = (right - left) * vel;

// Lógica de colisão para o estado normal
if (place_meeting(x + velh, y, obj_invi) && !global.transformado) {
    velh = 0;
}

if (place_meeting(x, y + velv, obj_invi) && !global.transformado) {
    velv = 0;
}

// Lógica de colisão para o estado transformado
if (place_meeting(x + velh, y, obj_invi_trans) && global.transformado) {
    velh = 0;
}

if (place_meeting(x, y + velv, obj_invi_trans) && global.transformado) {
    velv = 0;
}

// Atualiza a posição do jogador
x += velh;
y += velv;

// Roda o estado atual da máquina de estados
roda_estado();


