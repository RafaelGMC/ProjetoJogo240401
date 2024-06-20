/// @description Exibir a tela de gameover 
//rodando a animação de gameover
if (!instance_exists(obj_player) && !gameover_seq)
{
	gameover_seq = layer_sequence_create("sequences", global.view_width/2, global.view_height/2 , seq_perdeu);
	
}

