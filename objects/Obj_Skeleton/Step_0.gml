// Calcula a distância ao jogador
var player = instance_nearest(x, y, obj_player);
if (player != noone) {
    distance_to_player = point_distance(x, y, player.x, player.y);
}

// Roda o estado atual do inimigo
roda_estado_inimigo();