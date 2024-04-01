// Comandos para movimentar
var _dir = keyboard_check(vk_right)
var _esq = keyboard_check(vk_left)
var _baixo = keyboard_check(vk_down)
var _cima = keyboard_check(vk_up)


// Velo Parado
hspd = (_dir - _esq) * spd
vspd = (_baixo - _cima) * spd



//colisão horizontal e vertical

if (place_meeting(x + hspd, y, obj_invi))
{
	//colisão horizotal
	while (!place_meeting(x + sign(hspd), y, obj_invi))
	{
		x += sign(hspd);
	} 	
	 // está colidindo		 
		if keyboard_check(vk_right){
		hspd = -0.1	}
		if keyboard_check(vk_left){
		hspd = 0.1	}
	}



if (place_meeting(x, y + vspd, obj_invi))
{
	//colisão fertical
	while (!place_meeting(x , y + sign(vspd),  obj_invi))
	{
		y += sign(vspd);
	}  
	// está colidindo		
	{
		vspd = -0.000000000001;	
	}
		 
}



x += hspd
y += vspd

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

if (pocao = 1) 
{
	spd = 3
}

if trosso = 4
{
	room_goto_next()
}

