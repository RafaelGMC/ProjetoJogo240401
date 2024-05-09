// Evento de colisão entre o objeto do jogador e a poção roxa
if (place_meeting(x, y, obj_pocao_roxa))
{    
	// Configurar alarme 0 para 90 steps a 60fps (1.5 segundo)
	alarm[0] = 60;

	// Definir a cor para roxo para mostrar o jogador   
	image_blend = #800999;	 
		
	// Destruir a poção
	instance_destroy(other);
}

global.cont_chances +=1;