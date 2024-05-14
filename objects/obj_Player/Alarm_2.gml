if (alarm[2] == 0)
{
    // Mantenha a velocidade aumentada e a cor amarela
    if (_sob_efeito_pocao_amarela) 
    {
        image_blend = #fff999; // Amarelo
    }
    else
    {
        // Reverter a cor ao normal
        _sob_efeito_pocao_verde = false;
		_sob_efeito_pocao_amarela = false
		 image_blend = _cor_original;

    }
}