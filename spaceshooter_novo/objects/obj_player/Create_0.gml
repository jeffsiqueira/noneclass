/// @description Iniciando variaveis

// Sistema de vida
vida = 3;

// Sistema do escudo
quant_escudo = 3;

// configurando a velocidade nos eixos X e Y do player
vel_v = 0;
vel_h = 0;

/*
	Config. básica para os Power UPs
	
	Level do Tiro = 1				|	Limite Max. 5	|	Chances: 10%
	Velocidade do Player = 0.5		|	Limite Max. 10	|	Chances: 45%
	Espera/Frequencia do Tiro = 10%	|	Limite Max. 20	|	Chances: 45%
*/

// configurando o level do tiro
level_tiro = 1;

// Velocidade padrão do player
spd_player = 6;

// configurando o tempo padrão do tiro. 60 frames = 1 segundo
espera_tiro = room_speed; 


// registrando um metodo
atirando = function(){
	var fire = keyboard_check(vk_control);
	var y_tiro = sprite_height/3;
	/* 
		Este é o modo manual onde o tiro só sai quando apertamos várias vezes o botão tiro
	
	if(fire){
		instance_create_layer(x, y - sprite_height/3, "Tiro", obj_tiro);
	}*/
	/*
		Ativando o alarm a cada 1 segundo dentro do event step
		Para que o alarm seja ativado aqui é necessário fazermos alguns verificações
		Ao clicarmos no botão de tiro e o alarm não ter sido ativado, ele acionará o alarm
		O alarm aqui utilizado só servirá como controlador de tempo para o event step
	*/
	if( fire and alarm[0] == -1 ){
	
		// a cada 1 segundo o alarme será executado
		alarm[0] = espera_tiro;
		
		// level tiro 1
		if(level_tiro == 1){
			// cada vez que o alarm executar ele criará um tiro
			instance_create_layer(x, y - y_tiro, "Tiro", obj_tiro);
		}
		
		// level tiro 2
		else if(level_tiro == 2){
			// cada vez que o alarm executar ele criará o tiro
			// tiro zigzag
			f_tiro_2(y_tiro,4);
		}
		
		// level tiro 3
		else if(level_tiro == 3){
			// cada vez que o alarm executar ele criará o tiro
			// tiro do meio
			instance_create_layer(x, y - y_tiro, "Tiro", obj_tiro);

			// tiro zigzag
			f_tiro_2(y_tiro,6);
		}
		
		// level tiro 4
		else if(level_tiro == 4){
			// cada vez que o alarm executar ele criará o tiro
			// 3 tiros simples 
			f_tiro_4(y_tiro);
		}
		
		// level tiro 5
		else if(level_tiro == 5){
			// cada vez que o alarm executar ele criará o tiro
			// tiro zigzag
			f_tiro_2(y_tiro,6);
			
			// 3 tiros simples 
			f_tiro_4(y_tiro);
		}
	}
}

///@method f_tiro_2(y, speed)
f_tiro_2 = function(_y_pos, _speed){
	
	// tiro da asa esquerda
	var tiro_1 = instance_create_layer(x - 60, y - _y_pos + 15, "Tiro", obj_tiro_2);
			
	// fazendo o tiro 1 ir para esquerda
	tiro_1.hspeed = -_speed;
			
	// tiro da asa direita
	var tiro_2 = instance_create_layer(x + 60, y - _y_pos + 15, "Tiro", obj_tiro_2);
			
	// fazendo o tiro 2 ir para direita
	tiro_2.hspeed = _speed;
}

///@method f_tiro_4(y)
f_tiro_4 = function(_y_pos){
	// registramos o valor padrao da direção
	var direcao = 75;
	// repetimos o codigo 3 vezes
	repeat(3){
		// cada vez que o alarm executar ele criará um tiro
		var meu_tiro = instance_create_layer(x, y - _y_pos, "Tiro", obj_tiro);
				
		// apontamos para onde o tiro irá andar
		meu_tiro.direction = direcao;
			
		// fazer o meu tiro olhar para a direção que ele está indo
		meu_tiro.image_angle = meu_tiro.direction + 90;
				
		// somamos para alterar a direção dos próximos 2 tiros
		direcao += 15;
	}
}


///@method f_power_up(valor);
// iremos pegar o valor da variavel chance do obj_power_up
power_up = function(_chance){
	
	/*
		Se o valor da chance for maior que 90 e o level for menor que 5
		o level do tiro aumentará
	*/
	if(_chance >= 90 and level_tiro < 5){
		level_tiro++;
		/*show_debug_message("Ganhei um Level")
		show_debug_message(level_tiro)*/
	}
	else if(_chance >= 80 and quant_escudo < 3){
		quant_escudo ++;
		/*show_debug_message("Ganhei mais Velocidade")
		show_debug_message(spd_player)*/
	}
	/* 
		Se o valor da chance for maior que 45 e a "spr_velocidade" for menor que 10 
		a velocidade do player aumentará
	*/
	else if(_chance >= 45 and spd_player < 10){
		spd_player += .5;
		/*show_debug_message("Ganhei mais Velocidade")
		show_debug_message(spd_player)*/
	}
	/* 
		Se o valor da chance for menor que 45 e o "espera_tiro" for maior que 20 
		a espera do próximo tiro diminuirá
	*/
	else if(_chance < 45 and espera_tiro > 20){
		espera_tiro *= 0.9;
		/*show_debug_message("Diminui o tempo de espero do tiro")
		show_debug_message(espera_tiro)*/
	}
	
}
	
	
///@method f_perde_vida()
f_perde_vida = function(){
	
	// Se a vida do player for MAIOR que 0 diminui sua vida
	if(vida > 0){
		vida--;
	}else{
		
		// Caso contrário ele se destroi
		instance_destroy();
	}
}