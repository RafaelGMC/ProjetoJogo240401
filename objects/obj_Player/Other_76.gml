// identificando a mensagem
var _tipo = event_data[? "event_type"];

// este é o evento de sprite
if (_tipo == "sprite event")
	var _msg = event_data[? "message"];
{
	switch(_msg)
	{
		case "puf":
		//criando particulas
		var _part = part_system_create(ps_puf);
		part_system_position(_part, x, y);
		break;
		case "puf2":
		//criando particulas
		var _part = part_system_create(ps_puf);
		part_system_position(_part, x, y-20);
		break;	
	}
}