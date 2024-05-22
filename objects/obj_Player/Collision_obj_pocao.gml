// Evento de colisão entre o objeto do jogador e a poção vermelha
if (place_meeting(x, y, obj_pocao))
{       
	// Definir a cor para roxo para mostrar o jogador   
	image_blend = c_fuchsia;	
        
    // Configurar alarme 0 para 90 steps a 60fps (1.5 segundo)
	alarm[0] = 90;
		
	// Destruir a poção
	instance_destroy(other);
}
global.cont_saude = 100;
