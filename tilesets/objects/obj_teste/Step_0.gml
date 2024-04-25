// Comandos para movimentar
var _dir = keyboard_check(vk_right)
var _esq = keyboard_check(vk_left)
var _baixo = keyboard_check(vk_down)
var _cima = keyboard_check(vk_up)


// Velo Parado
hspd = (_dir - _esq) * spd
vspd = (_baixo - _cima) * spd
