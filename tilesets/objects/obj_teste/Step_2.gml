//colisao horizontal
var _col = instance_place(x + hspd,y,obj_invi);

//se eu colidir...
if (_col)
{
	// se eu estou indo para direita, eu grudo na esquerda da parede
	if (hspd > 0) {
	x = _col.bbox_left + (x - bbox_right);
	}
	// se eu estou indo para esquerda, eu grudo na direita da parede
	if (hspd < 0) {
	x = _col.bbox_right + (x - bbox_left);
	}
	// zero a velocidade horizontal	
	hspd = 0;	
}
x += hspd;

//colisao vertical
var _col = instance_place(x, y + vspd,obj_invi);

if (_col) 
{
	y = vspd > 0? _col.bbox_top + (y - bbox_bottom) : _col.bbox_bottom + (y - bbox_top);
	// zero a velocidade
	vspd = 0;
}
y += vspd;
