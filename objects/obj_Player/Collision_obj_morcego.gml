

if (global.cont_vidas <= 1)
{
instance_destroy(other)
room_restart()
global.cont_vidas = 3
global.cont_itens = 0;
global.cont_chaves = 0;

} else 
{
instance_destroy(other)
global.cont_vidas -= 1;
}




