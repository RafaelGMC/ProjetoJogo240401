// No evento de alarme 0
if (alarm[0] == 0) 
{
	// Se estiver sob o efeito da poção, voltar para a cor amarela
    if (_sob_efeito_pocao_amarela) {
		image_blend = #fff999;
        } else {
            // Caso contrário, voltar para a cor original
            image_blend = _cor_original;
        }
}