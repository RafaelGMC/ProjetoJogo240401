

// Evento de colisão entre o objeto do jogador e o objeto que pode ser coletado
if (place_meeting(x, y, obj_pocao_amarela)) {
    // Aumentar a velocidade
    vel += 1.25; // Aumente a velocidade conforme necessário
    
    // Configurar temporizador para 3 segundos (180 steps a uma taxa de 60fps)
   alarm[1] = 900;
}

instance_destroy(other)