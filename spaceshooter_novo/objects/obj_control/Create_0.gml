/// @description Iniciando variaveis

// iniciando o alarme
alarm[0] = room_speed;

// configurando os pontos
pontos = 0;

// configurando o level
level = 6;

// configurando a pontuação para passar o próximo level
proximo_level = 100;

// controlador de sequence
game_over_seq = noone;

// criamos um metodo para ganhar pontos
/// @method ganhar_pontos(pontos)
ganhar_pontos = function(_pontos){
	pontos += _pontos;
	
	if(pontos > proximo_level){
		level++;
		
		// dobrando o valor do próximo level
		proximo_level *= 2;
	}
	
}

// criando um metodo para criar inimigos
criar_inimigo = function(){

	// registramos variaveis temporarias para serem manipuladas
	var x_pos, y_pos, chance, inimigos;
	
	// definindo a posição X e Y para os inimigos aparecerem na Room
	x_pos = irandom_range(64, room_width-64);
	
	// fazemos uma multiplicação básica pelo level para dispersarmos melhor os inimigos
	y_pos = irandom_range(-200, -1500 - (800 * level));

	// guardando o valor "default" como primeiro inimigo
	inimigos = obj_enemy_1;

	/*
		Aqui iremos calcular a chance dos inimigos aparecerem de acordo com o level que escolhermos
		está função faz com que o número de 0 à X valor retorne número quebrados / flutuantes.
		Exemplo: de 0 à 2 irá retornar 0.1, 0.2 de forma aleatória.
	*/
	chance = irandom_range(0, level);
	
	// Se a chance for mais que 2 começará a ser criado o 2º inimigo
	if(chance >= 2 and chance < 4){
		inimigos = obj_enemy_2;
		show_debug_message("Estamos no 2º Nivel")
	}else if(chance >= 4 and chance < 6){
		inimigos = obj_enemy_4;
		show_debug_message("Estamos no 4º Nivel")
	}else if(chance >= 6){
		inimigos = obj_enemy_3;
		show_debug_message("Estamos no 6º Nivel")
	}
	show_debug_message(chance);
	
	// Criando os inimigos e suas posições 
	instance_create_layer(x_pos, y_pos, layer, inimigos);
}

