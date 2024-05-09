// No evento de alarme 0
if (alarm[0] == 0) {
    // Se estiver sob o efeito da poção amarela, mudar para a cor amarela
    if (_sob_efeito_pocao_amarela) {
        image_blend = #fff999;
    } 
    // Se não estiver sob o efeito de nenhuma poção, voltar para a cor original
    else {
		 image_blend = _cor_original;
    }
}
