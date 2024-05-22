// iniciando primeiro estado
estado_idle = new estado();

// iniciando o estado de walk
estado_walk = new estado();

#region estado_idle
// meu estado idle presida de um inicia
estado_idle.inicia = function()
{
	//definindo a sprite atual com base na direção que tô olhando
	var _sprite = define_sprite(dir,spr_player_parado_right_2, spr_player_parado_down_2, spr_player_parado_up_2);
	
	//ajustando sprite 
	sprite_index = _sprite;
	
	//garatindo que começe do primeiro sprite
	image_index = 0;
}

estado_idle.roda = function()
{
	 //achando a condição para eu sair desse estado
	
	 
	 //se eu estiver em movimento, então eu vou para o estado de walk
	 if (up xor down or left xor right)
	 {
		troca_estado(estado_walk);	
	 }
}
#endregion 

#region estado_walk
estado_walk.inicia = function()
{
	dir		= (point_direction(0, 0, right - left, down - up) div 90);

	//definindo a sprite
	

	// configurando a sprite
	sprite_index = define_sprite(dir, spr_player_movendo_right_2, spr_player_movendo_down_2, spr_player_movendo_up_2);
	
	// começando do frame 0
	image_index = 0;
}
estado_walk.roda = function()
{
	dir		= (point_direction(0,0,velh,velv) div 90);
	//condiçao para sair do estado
	//se eu estou parado eu vou para o estado de idle
	
	//Ajustando o lado que ele olha
	if (velh != 0)
	{
		image_xscale = sign(velh);
	}
	
	//definindo a sprite
	sprite_index = define_sprite(dir, spr_player_movendo_right_2, spr_player_movendo_down_2, spr_player_movendo_up_2);
	//movendo
	//fazendo velo vertical
	velv	 = (down - up) * vel;
	//fazendo velo horizontal
	velh	 = (right - left) * vel;
	
	if (velh == 0 && velv == 0)
	{
		troca_estado(estado_idle);
	}
}

#endregion

//iniciar variaveis
#region iniciando_variaveis
// controles estão sendo iniciados sem valor
up = noone;
down = noone;
left = noone;
right = noone;

// variaveis de movimento
// iniciando parado

velh = 0;
velv = 0;

//velocidade do jogador
vel = 1.25;

//contrando a direcao que o player está olhando
dir = 0;

#endregion

// iniciando minha maquina de estados
inicia_estado(estado_idle);

//itens que pode ser coletados
trosso = 0;
chave = 0;

//objeto de colisão para passar de fase
passa_fase = 0;

// Variável para controlar se o jogador está sob o efeito da poção
_sob_efeito_pocao_amarela = false;
_sob_efeito_pocao_verde = false;

// Variável para armazenar a cor original do jogador
_cor_original = -1;




