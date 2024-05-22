// Evento de colisão entre o objeto do jogador e a poção verde
if (place_meeting(x, y, obj_pocao_verde))
{
    // Se já estiver sob efeito de outra poção, limpar o efeito anterior
    if (_sob_efeito_pocao_amarela) 
    {
		//perco velocidade
        vel -= 1.25;
		//retorno a cor original
        image_blend = _cor_original;
		//perco o efeito da poção
        _sob_efeito_pocao_amarela = false;
    }     
    // Configurar temporizador para 15 segundos (900 steps a uma taxa de 60fps)
    alarm[1] = 900; 
	
    // Mudar a cor para verde e definir que está sob efeito da poção
    image_blend = c_lime;
    _sob_efeito_pocao_verde = true;
    
    // Destruir a poção
    instance_destroy(other);
}