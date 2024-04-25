/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//sabendo o tamanho do meu tileset

tamanho = 16;


//definindo quantas linhas e colunas minha romm tem
colunas = room_width div tamanho;
linhas = room_height div tamanho;

//criando meu array para guardar todas informações do tileset

level = 0; 
escala = 0.1; 
diam = 0.1

// identificando meu tileset
var _layer = layer_get_id("tl_paredes");
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