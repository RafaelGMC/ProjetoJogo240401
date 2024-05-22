// Evento de colisão entre o objeto do jogador e a poção amarela
if (place_meeting(x, y, obj_pocao_amarela)) 
{	
	//se tiver sobre efeito da poção verde...
	if (_sob_efeito_pocao_verde) 
    {   
		//retorno a cor original
        image_blend = _cor_original;
		//perco o efeito da poção verde
        _sob_efeito_pocao_verde = false;
    } 
    // Aumentar a velocidade
    vel += 1.25;  
	
	// Configurar temporizador para 15 segundos (900 steps a uma taxa de 60fps)
    alarm[1] = 900;
	
	// Mudar a cor para amarelo e definir que está sob efeito da poção
    image_blend = #fff999;	
	_sob_efeito_pocao_amarela = true;    
	
    // Destruir a poção
    instance_destroy(other);
}
