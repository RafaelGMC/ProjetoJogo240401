// No evento de alarme 1
if (alarm[1] > 0)
{
    alarm[1] -= 1; // Decrementar o temporizador	

    // Mantenha a velocidade aumentada e a cor amarela
    if (_sob_efeito_pocao_amarela) 
	{
		image_blend = #fff999;
    }
} else {
    // Reverter a velocidade ao normal quando o temporizador expirar
    vel -= 1.25;
	
    // Reverter a cor ao normal
    image_blend = -1;	
    _sob_efeito_pocao_amarela = false;
}