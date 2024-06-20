// EVENTO DE CRIAR DO MINIMAPA
// Adicionando controle de visibilidade
visivel = true;

//sabendo o tamanho do meu tileset
tamanho = 16;

//criando animação da bolinha
diam = 3;

//definindo quantas linhas e colunas minha romm tem
colunas = room_width div tamanho;
linhas = room_height div tamanho;

//criando meu array para guardar todas informações do tileset
level = 0; 
escala = 0.3; 

// identificando meu tileset
var _layer = layer_get_id("tl_mapa");
var _mapa = layer_tilemap_get_id(_layer)

//rodando minha room encontrando as tiles
for (var i = 0; i < linhas; i++)
{
	for (var j = 0; j < colunas; j++)
	{
		//Achando se na celula atual tem o meu tileset
		level[j][i] = tilemap_get(_mapa, j, i);
	}
}
