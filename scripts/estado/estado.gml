function estado() constructor
{
	//Iniciando estado
	static inicia = function(){};
	//Rodando estado
	static roda = function(){};
	//Finalizando estado	
	static finaliza = function(){};

}

// Variáveis globais para as sprites
global.spr_parado_right = spr_player_parado_right_2;
global.spr_parado_down = spr_player_parado_down_2;
global.spr_parado_up = spr_player_parado_up_2;
global.spr_movendo_right = spr_player_movendo_right_2;
global.spr_movendo_down = spr_player_movendo_down_2;
global.spr_movendo_up = spr_player_movendo_up_2;
global.mask_normal = spr_player_parado_down_2;
global.mask_transform = spr_player_transform_down;
global.transformado = false;
global.vel_normal = 1.00; // Velocidade no estado normal
global.vel_transform = 0.75; // Velocidade no estado transformado

// funcões para controlar a maquina de estados
//iniciando o estado
function inicia_estado(_estado)
{
	//salvando o estado passado em uma varivel
	estado_atual = _estado;
	
	//Iniciando o estado atual
	estado_atual.inicia();
}

// Rodando o estado
function roda_estado()
{
	estado_atual.roda();
}

// Trocando estado
function troca_estado(_estado)
{
	//Finalizando o estado atual
	estado_atual.finaliza();
	
	//rodando o proximo estado
	estado_atual = _estado;
	
	//iniciando o proximo estado
	estado_atual.inicia();
}

//Definindo a sprite
function define_sprite(_dir = 0, _sprite_side, _sprite_front, _sprite_back)
{
	var _sprite;
	
	switch(_dir)
	{
		case 0: _sprite = _sprite_side; break;
		case 1: _sprite = _sprite_back; break;
		case 2: _sprite = _sprite_side; break;
		case 3: _sprite = _sprite_front; break;		
	}	
	return _sprite;
}