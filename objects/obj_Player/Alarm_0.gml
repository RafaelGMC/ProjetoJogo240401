// No evento de alarme 0
if (alarm[0] == 0) {
    // Se estiver sob o efeito da poção amarela, mudar para a cor amarela
    if (_sob_efeito_pocao_amarela) {
        image_blend = #fff999;
    } 
    // Se estiver sob o efeito da poção verde, mudar para a cor verde
    else if (_sob_efeito_pocao_verde) {
        image_blend = c_lime;
    }
    // Se não estiver sob o efeito de nenhuma poção, voltar para a cor original
    else {
        image_blend = _cor_original;
    }
}