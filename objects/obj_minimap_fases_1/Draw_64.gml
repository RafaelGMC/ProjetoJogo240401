//EVENTO DRAW GUI
// Desenhando a representanção do meu level
if (visivel) 
{
	var _x = 970;
	var _y = 540;

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
				draw_set_color(c_white);			
				draw_rectangle(_x + j * _tam, _y + i * _tam, _x + (j + 1) * _tam, _y + (i + 1) * _tam, 0);			
				draw_set_color(c_red);
			}
		}
	}	
//desenhando o player
	if (instance_exists(obj_player))
	{
		var _play_x = obj_player.x * escala ;
		var _play_y = obj_player.y * escala ;
		draw_circle(_play_x +  969.5, _play_y + 537.5 , diam , false);
		//draw_rectangle(_play_x + 162, _play_y + 89, _play_x + 162, _play_y + 89 , false);
	} 
}
