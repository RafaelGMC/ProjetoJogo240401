// Evento de colisão entre o objeto do jogador e a poção verde
if (place_meeting(x, y, obj_pocao_verde)) 
{
    // Definir a cor para verde para mostrar o jogador   
    image_blend = #90ee90;
    
    // Configurar temporizador para 10 segundos (600 steps a uma taxa de 60fps)
    alarm[2] = 900;
    
    // Definir que está sob efeito da poção verde
    _sob_efeito_pocao_verde = true;	
	
	
	if (!_sob_efeito_pocao_verde) {
	image_blend = #fff999;

	_sob_efeito_pocao_amarela = true;

    }	

    
    // Destruir a poção
    instance_destroy(other);
} 
	