estado_inimigo_idle = new estado_inimigo();

estado_inimigo_idle.inicia = function() {
    var _sprite = define_sprite_inimigo(dir_inimigo, global.spr_inimigo_parado_right, global.spr_inimigo_parado_down, global.spr_inimigo_parado_up);
    sprite_index = _sprite;
    image_index = 0;
}



estado_inimigo_idle.roda = function() {
    if (inimigo_deve_caminhar()) {
        troca_estado_inimigo(estado_inimigo_walk);
		
    }
    if (inimigo_deve_atacar()) {
        troca_estado_inimigo(estado_inimigo_attack);
    }
}


///


estado_inimigo_walk = new estado_inimigo();

estado_inimigo_walk.inicia = function() {
    dir_inimigo = (point_direction(0, 0, right_inimigo - left_inimigo, down_inimigo - up_inimigo) div 90);
    sprite_index = define_sprite_inimigo(dir_inimigo, global.spr_inimigo_movendo_right, global.spr_inimigo_movendo_down, global.spr_inimigo_movendo_up);
    image_index = 0;
}

estado_inimigo_walk.roda = function() {
    dir_inimigo = (point_direction(0, 0, velh_inimigo, velv_inimigo) div 90);

    if (velh_inimigo != 0) {
        image_xscale = sign(velh_inimigo);
    }

    sprite_index = define_sprite_inimigo(dir_inimigo, global.spr_inimigo_movendo_right, global.spr_inimigo_movendo_down, global.spr_inimigo_movendo_up);

    velv_inimigo = (down_inimigo - up_inimigo) * vel_inimigo;
    velh_inimigo = (right_inimigo - left_inimigo) * vel_inimigo;

    if (velh_inimigo == 0 && velv_inimigo == 0) {
        troca_estado_inimigo(estado_inimigo_idle);
    }
    if (inimigo_deve_atacar()) {
        troca_estado_inimigo(estado_inimigo_attack);
    }
}



////


estado_inimigo_attack = new estado_inimigo();

estado_inimigo_attack.inicia = function() {
    sprite_index = spr_inimigo_attack;
    image_index = 0;
    audio_play_sound(snd_attack, 1, false);
}

estado_inimigo_attack.roda = function() {
    if (image_index >= image_number - 1) {
        troca_estado_inimigo(estado_inimigo_idle);
    }
}

// Inicializa variáveis
up_inimigo = noone;
down_inimigo = noone;
left_inimigo = noone;
right_inimigo = noone;
velh_inimigo = 0;
velv_inimigo = 0;
vel_inimigo = 1.0;
dir_inimigo = 0;

// Inicializa a distância do jogador
distance_to_player = 0;

// Inicia o estado inicial do inimigo
inicia_estado_inimigo(estado_inimigo_idle);


function inimigo_deve_caminhar() {
    // Lógica para determinar se o inimigo deve caminhar (por exemplo, seguir o jogador)
    return distance_to_player > 20; // Exemplo de lógica
}

function inimigo_deve_atacar() {
    // Lógica para determinar se o inimigo deve atacar (por exemplo, quando está perto do jogador)
    return distance_to_player <= 5; // Exemplo de lógica
}
