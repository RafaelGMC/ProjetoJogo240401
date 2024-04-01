// Comandos para movimentar
var _dir = keyboard_check(vk_right)
var _esq = keyboard_check(vk_left)
var _baixo = keyboard_check(vk_down)
var _cima = keyboard_check(vk_up)

// Velo Parado
hspd = (_dir - _esq) * spd
vspd = (_baixo - _cima) * spd



//colisão horizontal e vertical

repeat(abs(hspd))
{
	//colisão horizotal
	if (!place_meeting(x + sign(hspd), y, obj_invi))
	{
		x += sign(hspd)
	} else // está colidindo
	{
		hspd = 0
	}
}

repeat(abs(vspd))
{
	//colisão vertical
	if (!place_meeting(x, y + sign(vspd), obj_invi))
	{
		y += sign(vspd)
	} else // está colidindo
	{
		vspd = 0
	}
}

// Condicional para mudar de sprite do personagem 
if (hspd != 0 or vspd != 0)
{
	movendo = 1
} else 
{
	movendo = 0
}

if (_dir) lado = 2
if (_esq) lado = 3
if (_baixo) lado = 0
if (_cima) lado = 1




// Definindo qual sprite o objeto vai usar
sprite_index = sprites[movendo][lado]

if flor=3
{
	room_goto_next()
}