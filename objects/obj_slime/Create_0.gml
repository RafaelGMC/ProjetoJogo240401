/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
spd = 8;
hspd = 0;
vspd = 0;
grv = 0.4;
hp = 10;

image_speed = 0.6;

state = EnemyState.IDLE;

enum EmenyState
{
IDLE,
CHASE,
ATTACK
}
