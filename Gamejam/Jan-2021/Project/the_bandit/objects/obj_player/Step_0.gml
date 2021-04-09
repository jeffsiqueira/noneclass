/// @description Verifica os eventos continuamente

//criamos variaveis temporarias
var climber, up, down, left, right, steal;
var col_item = instance_place(x,y,obj_item);

//variavel para dedectação de collisions
//var chao = place_meeting(x, y+1, obj_collision);
var teto = place_meeting(x, y-1, obj_collision);
//var elevador = place_meeting(x, y, obj_elevador);

climber = keyboard_check_pressed(ord("E"));
up = keyboard_check(ord("W")) or keyboard_check(vk_up);
left = keyboard_check(ord("A")) or keyboard_check(vk_left);
right = keyboard_check(ord("D")) or keyboard_check(vk_right);
down = keyboard_check(ord("S")) or keyboard_check(vk_down);
steal = keyboard_check_pressed(ord("F"));


/*
	Iniciamos algumas verificações antes de calcular a gravidade
	Se o personagem não estiver em uma escada e não estiver pendurado
	A gravidade será calculada
*/
if(check_escada == false){
	if (check_climber == false){
		velV = velV + (gravidade * massa) * global.vel_mult;
		//show_debug_message(velV)
	}
}

if(vida > 0){
	// aplicando velocidade de movimento no personagem 
	velH = (right - left) * spd_player * global.vel_mult;

	// se estivermos na escada poderemos subir ou descer por ela
	if(check_escada == true){
		velV = (down - up) * 0.5 * global.vel_mult;
	}
}

// se não estivermos pendurados e estivermos no chão iremos nos movimentar
if(check_climber == false  && check_acao == false){
	// se estivermos na parede não poderemos nos movimentar
	if(place_meeting(x+velH, y, obj_collision)){
		
		// iremos verficar constantemente se não estamos na parede
		/*while(!place_meeting(x+sign(velH), y, obj_collision)){
			x = x + sign(velH);
			show_message("teste")
		}*/
		velH = 0;
		estado = "parado";
		check_parede = true;
	}
	check_parede = false;
	x = x + velH;
}

//invertendo a imagem
if (velH != 0){
	xscale = sign(velH);
}
image_xscale = xscale;



//Se não estivermos pendurados e não estivermos no chão aplicamos a gravidade
if(check_climber == false){
	// Verificamos se estamos no chão
	if(place_meeting(x, y+velV, obj_collision)){
		check_chao = true;
		// Verificamos continuamente se não estamos no chão
		/*while(!place_meeting(x, y+sign(velV), obj_collision)){
			
			y = y + sign(velV);
			show_debug_message(y)
		}*/
		velV = 0;
		
	}else{
		check_chao = false;
	}
	y = y + velV;
}


// Verificamos se estamos colidindo com a escada
if(place_meeting(x, y+sign(velV), obj_escada)){
	check_escada = true;
	y = y + velV / 2;
	//Correção de velocidade se pararmos a movimentação
	/*if(abs(velV) < .1){
		velV = 0;
	}*/
	//show_debug_message(check_escada)
}else{
	check_escada = false;
	//show_debug_message(check_escada)
}


// Definimos vários estados para executar determinadas ações e animações

switch(estado){
	
	// caso esteja parado
	case "parado":{
		if(sprite_index != sprite_idle){
			sprite_index = sprite_idle;
		}
		if(left || right){
			estado = "andando";
			image_index = 0;
		}
		if(check_chao == true && check_parede == false){
			if(climber){
				estado = "pendurar";
				image_index = 0;
			}
		}
		if(check_escada == true){
			if(up || down){
				estado = "subindo_escada";
				image_index = 0;
			}
		}
		if(col_item){
			if(steal){
				estado = "roubar";
				image_index = 0;
			}
		}
	}
	break;
	
	// caso esteja andando
	case "andando":{
		if(check_climber == false){
			if(sprite_index != sprite_move){
				sprite_index = sprite_move;
			}

			if(abs(velH) < .1){
				estado = "parado";
				velH = 0;
			}
			if(check_chao == true){
				if(climber){
					estado = "pendurar";
					image_index = 0;
				}
			}
		}
	}
	break;
	
	// caso suba uma escada
	case "subindo_escada":{
		if(sprite_index != sprite_move){
			sprite_index = sprite_move;
		}
		if(abs(velV) < .1){
			estado = "parado";
			velV = 0;
		}
	}
	break;
	
	// caso se pendure no teto
	case "pendurar":{
		
		if(sprite_index != sprite_climber){
			sprite_index = sprite_climber;
			
			instance_create_layer(x - (1) * xscale, y - sprite_height/2, "Itens", obj_hook);
		}
		
		
		check_climber = true;

		if(check_climber == true){
			velV = spd_climber;
			if (image_speed > 0){
				if (image_index > image_number - 1){
					image_index = 2;

					y -= velV;

					if(teto){
						show_debug_message("estou no teto");
						velV = 0;
						estado = "pendurou";
					}
				}
				
			}
		}
		
	}
	break;
	
	// caso esteja no pendurado no teto
	case "pendurou":{
		if(sprite_index != sprite_climber_f){
			//show_debug_message("pendurou");
			sprite_index = sprite_climber_f;
			//instance_destroy(obj_hook.id);
		}
		
		//desativa o climber
		if(climber || down){
			check_climber = false;
			if(check_climber == false){
				//show_debug_message("vai descer");
				estado = "parado";
			}
		}
		
	}
	break;
	
	// caso esteja pronto para roubar
	case "roubar":{
		if(sprite_index != sprite_steal){
			sprite_index = sprite_steal;
		}
		check_acao = true;
		

		if (image_speed > 0){
			if (image_index > image_number -1){
				estado = "parado";
				if(col_item){
					col_item.get_item = true;
					check_acao = false;
					//show_debug_message(quadro);
				}
			}
		}
	}
	break;
	
	// caso seja pego
	case "hit":{
		if(sprite_index != sprite_gameover){
			sprite_index = sprite_gameover;
		}
		if (image_speed > 0){
			if (image_index > image_number - 1){
				image_index = 2;
			}
		}
		
		if(vida <= 0){
			velH = 0;
			velV = 0;

			// verificamos se o objeto existe
			if(instance_exists(obj_game_controller)){
				// acessamos o objeto para manipular seus valores
				with(obj_game_controller){
					game_over = true;
					texto = "Você foi pego!";
					global.n_quadro = 0;
					global.spd_boost = 1;
				}
			}
		}
	}
	break;
	
	// caso o tempo acabe
	case "time_over":{
		if(sprite_index != sprite_gameover){
			sprite_index = sprite_gameover;
		}
		if (image_speed > 0){
			if (image_index > image_number - 1){
				image_index = 2;
			}
		}
		
		if(vida <= 0){
			velH = 0;
			velV = 0;

			// verificamos se o objeto existe
			if(instance_exists(obj_game_controller)){
				// acessamos o objeto para manipular seus valores
				with(obj_game_controller){
					game_over = true;
					texto = "Seu tempo acabou e você foi pego!";
					global.n_quadro = 0;
					global.spd_boost = 1;
				}
			}
		}
	}
	break;
}