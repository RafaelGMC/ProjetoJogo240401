// Iniciando estados
estado_idle = new estado();
estado_walk = new estado();
estado_attack = new estado();
estado_transform = new estado();

#region estado_idle
estado_idle.inicia = function() {
    var _sprite = define_sprite(dir, global.spr_parado_right, global.spr_parado_down, global.spr_parado_up);
    sprite_index = _sprite;
    image_index = 0;
}

estado_idle.roda = function() {
    if (up xor down or left xor right) {
        troca_estado(estado_walk);
    }
    // Se o jogador pressionar a tecla de ataque
    if (keyboard_check_pressed(vk_space)) {
        troca_estado(estado_attack);
    }
    // Se o jogador pressionar a tecla de transformação
    if (keyboard_check_pressed(ord("T"))) {
        troca_estado(estado_transform);
    }
}
#endregion

#region estado_walk
estado_walk.inicia = function() {
    dir = (point_direction(0, 0, right - left, down - up) div 90);
    sprite_index = define_sprite(dir, global.spr_movendo_right, global.spr_movendo_down, global.spr_movendo_up);
    image_index = 0;
}

estado_walk.roda = function() {
    dir = (point_direction(0, 0, velh, velv) div 90);

    if (velh != 0) {
        image_xscale = sign(velh);
    }

    sprite_index = define_sprite(dir, global.spr_movendo_right, global.spr_movendo_down, global.spr_movendo_up);
    

    velv = (down - up) * vel;
    velh = (right - left) * vel;

    if (velh == 0 && velv == 0) {
        troca_estado(estado_idle);
    }
    // Se o jogador pressionar a tecla de ataque
    if (keyboard_check_pressed(vk_space)) {
        troca_estado(estado_attack);
    }
    // Se o jogador pressionar a tecla de transformação
    if (keyboard_check_pressed(ord("T"))) {
        troca_estado(estado_transform);
    }
}
#endregion

#region estado_attack
estado_attack.inicia = function() {
    // Definindo a sprite de ataque com base na direção atual
    switch (dir) {
        case 0: 
            sprite_index = spr_player_attack_right; 
            break;
        case 1: 
            sprite_index = spr_player_attack_up; 
            break;
        case 2: 
            sprite_index = spr_player_attack_right; 
            break;
        case 3: 
            sprite_index = spr_player_attack_down; 
            break;
    }
	image_index = 0;
    audio_play_sound(snd_attack, 1, false); // Toca o som de ataque
}

estado_attack.roda = function() {
    // Verificação de colisão com monstros
    with (obj_monstro) {
        if (place_meeting(x, y, other)) {
            vida -= global.dano_jogador; // Aplicar dano ao monstro
            if (vida <= 0) {
                instance_destroy(); // Destruir monstro se a vida for zero ou menor
            }
        }
    }

    // Condição para finalizar o ataque (exemplo: quando a animação termina)
    if (image_index >= image_number - 1) {
        troca_estado(estado_idle);
    }
}
#endregion

#region estado_transform
estado_transform.inicia = function() {
    if (global.transformado) {
        global.spr_parado_right = spr_player_parado_right_2;
        global.spr_parado_down = spr_player_parado_down_2;
        global.spr_parado_up = spr_player_parado_up_2;
        global.spr_movendo_right = spr_player_movendo_right_2;
        global.spr_movendo_down = spr_player_movendo_down_2;
        global.spr_movendo_up = spr_player_movendo_up_2;
        mask_index = global.mask_normal;
        vel = global.vel_normal; // Velocidade no estado normal
    } else {
        global.spr_parado_right = spr_player_transform_right;
        global.spr_parado_down = spr_player_transform_down;
        global.spr_parado_up = spr_player_transform_up;
        global.spr_movendo_right = spr_player_transform_movendo_right;
        global.spr_movendo_down = spr_player_transform_movendo_down;
        global.spr_movendo_up = spr_player_transform_movendo_up;
        mask_index = global.mask_transform;
        vel = global.vel_transform; // Velocidade no estado transformado
    }
    
    // Alternar o estado de transformação
    global.transformado = !global.transformado;
    
    // Definindo a sprite atual
    var _sprite = define_sprite(dir, global.spr_parado_right, global.spr_parado_down, global.spr_parado_up);
    sprite_index = _sprite;
    image_index = 0;
}

estado_transform.roda = function() {
    // Volta ao estado idle após a transformação
    troca_estado(estado_idle);
}
#endregion

// Iniciando variáveis
#region iniciando_variaveis
up = noone;
down = noone;
left = noone;
right = noone;
velh = 0;
vel = global.vel_normal;
dir = 0;
#endregion

// Iniciando a máquina de estados
inicia_estado(estado_idle);

// Itens que podem ser coletados
trosso = 0;
chave = 0;
passa_fase = 0;

// Variáveis para controlar os efeitos de poções
_sob_efeito_pocao_amarela = false;
_sob_efeito_pocao_verde = false;

// Variável para armazenar a cor original do jogador
_cor_original = -1;





