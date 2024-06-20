
function estado_inimigo() constructor
{
	//Iniciando estado
	static inicia = function(){};
	//Rodando estado
	static roda = function(){};
	//Finalizando estado	
	static finaliza = function(){};

}

global.spr_inimigo_parado_right = spr_inimigo_parado_right;
global.spr_inimigo_parado_down = spr_inimigo_parado_down;
global.spr_inimigo_parado_up = spr_inimigo_parado_up;
global.spr_inimigo_movendo_right = spr_inimigo_movendo_right;
global.spr_inimigo_movendo_down = spr_inimigo_movendo_down;
global.spr_inimigo_movendo_up = spr_inimigo_movendo_up;

function inicia_estado_inimigo(_estado) {
    estado_inimigo_atual = _estado;
    estado_inimigo_atual.inicia();
}

function roda_estado_inimigo() {
    estado_inimigo_atual.roda();
}

function troca_estado_inimigo(_estado) {
    estado_inimigo_atual.finaliza();
    estado_inimigo_atual = _estado;
    estado_inimigo_atual.inicia();
}

function define_sprite_inimigo(_dir = 0, _sprite_side, _sprite_front, _sprite_back) {
    var _sprite;
    switch (_dir) {
        case 0: _sprite = _sprite_side; break;
        case 1: _sprite = _sprite_back; break;
        case 2: _sprite = _sprite_side; break;
        case 3: _sprite = _sprite_front; break;
    }
    return _sprite;
}