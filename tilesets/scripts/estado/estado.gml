function estado() constructor
{
	//Iniciando estado
	static inicia = function(){};
	//Rodando estado
	static roda = function(){};
	//Finalizando estado	
	static finaliza = function(){};

}

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