
move_and_collide(velh,velv, obj_invi);

/*
if (place_meeting(x + velh, y, obj_invi))
{
	//colisão horizotal
	while (!place_meeting(x + sign(velh), y, obj_invi))
	{
		x += sign(velh);
	} 	
	 // está colidindo		
	{	
		velh = 0;
	}
}
if (place_meeting(x, y + velv, obj_invi))
{
	//colisão fertical
	while (!place_meeting(x , y + sign(velv),  obj_invi))
	{
		y += sign(velv);
	}  
	// está colidindo		
	{
		velv = 0;	
	}		 
}
*/
/*
//colisao horizontal
var _col = instance_place(x + velh,y,obj_invi);

//se eu colidir...

if (_col)
{
	// se eu estou indo para direita, eu grudo na esquerda da parede
	if (velh > 0) {
	x = _col.bbox_left + (x - bbox_right);
	}
	// se eu estou indo para esquerda, eu grudo na direita da parede
	if (velh < 0) {
	x = _col.bbox_right + (x - bbox_left);
	}
	// zero a velocidade horizontal	
	velh = 0;	
}

x += velh;

//colisao vertical
_col = instance_place(x, y + velv,obj_invi);

/*
if (_col) 
{
	y = velv > 0? _col.bbox_top + (y - bbox_bottom) : _col.bbox_bottom + (y - bbox_top);
	// zero a velocidade
	velv = 0;
}

if (_col)
{
	// se eu estou indo para direita, eu grudo na esquerda da parede
	if (velv > 0) {
	y = _col.bbox_top + (y - bbox_bottom);
	}
	// se eu estou indo para esquerda, eu grudo na direita da parede
	if (velv < 0) {
	y = _col.bbox_bottom + (y - bbox_top);
	}
	// zero a velocidade horizontal	
	velv = 0;	
}

y += velv;

*/
if (pocao == 1) 
{
	vel = 3;
}

if (trosso == 4 and passa_fase != 0 and chave = 1)
{
	room_goto_next();
}

