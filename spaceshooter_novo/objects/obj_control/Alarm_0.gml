/// @description Criando inimigos

// Se não existir inimigos na tela irá executar a criação de inimigos
// Não precisamos verificar se existe o inimigo 2 pois ele é filho do inimigo 1
if(!instance_exists(obj_enemy_1)){
	// está função fará com que nosso método repita o número de vezes que definirmos
	repeat(10 * level){
		// Criamos os inimigos
		criar_inimigo();
	}
}



// reiniciando o alarm novamente a cada 5 segundos
alarm[0] = room_speed * 5;