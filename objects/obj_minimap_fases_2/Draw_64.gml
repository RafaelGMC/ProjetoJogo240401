/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// Desenhando a representanção do meu level


var _x = 1020;
var _y = 560;

for (var i = 0; i < linhas; i++)
{
	
	for(var j = 0; j < colunas; j++)
	{
		
	// eu vou checar se vou desenhar na celula atual
		if (level[j][i] != 0)
		{			
			var _tam = tamanho * escala;
			//agora posso desenhar
			/* deixar "diferente" a cor
			var _cor = make_color_rgb(111,107,255);
			*/					
			draw_set_color(c_red);			
			draw_rectangle(_x + j * _tam, _y + i * _tam, _x + (j + 1) * _tam, _y + (i + 1) * _tam, 0);			
			draw_set_color(c_white);
		}
	}
}

//desenhando o player

if (instance_exists(obj_player))
{
	var _play_x = obj_player.x * escala ;
	var _play_y = obj_player.y * escala ;
	draw_circle(_play_x + 1020, _play_y + 557.5 , 3, false);
	//draw_rectangle(_play_x + 162, _play_y + 89, _play_x + 162, _play_y + 89 , false);
} 

