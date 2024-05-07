// No evento Alarm 0
if (alarm[1] > 0) {
    alarm[1] -= 1; // Decrementar o temporizador
    
    // Mantenha a velocidade aumentada
} else {
    // Reverter a velocidade ao normal quando o temporizador expirar
    vel -= 1.25; // Reverta a velocidade conforme necessário
}