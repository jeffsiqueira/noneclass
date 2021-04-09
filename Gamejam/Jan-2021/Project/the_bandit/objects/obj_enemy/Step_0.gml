 /// @description Verifica os eventos continuamente

// variaveis temporarias
var view_wall, view_player, view_atk_player, dir;

// responsavel pela verificação da parede
view_wall = collision_rectangle(x + (19 * xscale), y - sprite_height/2, x + (50 * xscale), y - 14, obj_collision, false, false);

// responsavel pela verificação do player
view_player = collision_rectangle(x, y - sprite_height/2, x + (dist * xscale), y - 14, obj_player, false, false);

// reponsavel pela verificação se pode atacar o player
view_atk_player = collision_rectangle(x, y - sprite_height/2, x + (dist_atk *  xscale), y - 14, obj_player, false, false);

// verifica a direção do player
dir = point_direction(x, y, obj_player.x, y);


// verificando se o personagem colidiu com a parede
if(estado == "andando"){
	
	// verificando se colidimos com a parede
	if(place_meeting(x+velH, y, obj_collision)){
		
		//se não colidimos nós iremos continuar andando
		while(!place_meeting(x+velH, y, obj_collision)){
			x = x + sign(velH);
		}
		
		// caso colidamos com este verificador, iremos virar para o sentido oposto
		if(place_meeting(x, y, obj_vira_direita)){
			velH = spd_enemy;
		}
		
		// caso colidamos com este verificador, iremos virar para o sentido oposto
		if(place_meeting(x, y, obj_vira_esquerda)){
			velH = -spd_enemy;
		}
		
		//show_debug_message("tocou na parede")
	}
	x = x + velH * global.spd_boost;
}

//invertemos a imagem
if (velH != 0){
	xscale = sign(velH);
}
image_xscale = xscale;


// iniciamos o tempo dos estados parado e andando
timer_estado++;

// Configuramos os estados do personagem
switch(estado){
	
	// caso esteja parado
	case "parado":{
		if(sprite_index != sprite_idle){
			sprite_index = sprite_idle;
		}
		
		/* 
			primeiro verificamos se estamos vendo o player
			e se não estamos colidindo com a parede
		*/
		if(view_player){
			estado = "perseguindo";
			image_index = 0;
			check_visao = true;
			show_debug_message("te vi (parado) "+string(check_visao))
			//audio_play_sound(snd_guard_stop,1,false);
		}
		
		/*
			definimos um valor para executar a troca de estados
			usamos o choose() para atribuir valores a serem escolhidos
		*/
		if(irandom(timer_estado) > 50 && check_visao == false){
			estado = choose("parado","parado","andando");
			
			show_debug_message("perdi de vista. estado"+string(estado));
			timer_estado = 0;
			image_index = 0;
		}
	}
	break;
	
	// caso esteja andando
	case "andando":{
		if(sprite_index != sprite_move){
			sprite_index = sprite_move;
			velH = choose(-velH,velH);
		}
		
		/* 
			primeiro verificamos se estamos vendo o player
			e se não estamos colidindo com a parede
		*/
		if(view_player){
			estado = "perseguindo";
			//image_index = 0;
			check_visao = true;
			show_debug_message("te vi (andando) "+string(check_visao));
			//audio_play_sound(snd_guard_stop,1,false);
		}
		if(irandom(timer_estado) > 200 && check_visao == false){
			
			estado = choose("parado","andando","andando");
			
			show_debug_message("perdi de vista. estado:"+string(estado))
			timer_estado = 0;
		}
	}
	break;
	
	// caso esteja perseguindo
	case "perseguindo":{
		if(sprite_index != sprite_move){
			sprite_index = sprite_move;
		}
		
		show_debug_message("te vi (andando) "+string(check_visao))
		
		/* 
			primeiro verificamos se estamos vendo o player
			e se não estamos colidindo com a parede
		*/
		if(view_player and !place_meeting(x+velH, y, obj_collision)){
			
			// verificamos a direção do player
			velH = lengthdir_x(spd_enemy, dir);
			
			// NOVO CÓDIGO DE PERSEGUIÇÃO
			if(view_wall){
				
				// aplicamos a velocidade para perseguição
				x += velH * global.spd_boost;
				
				// corrigimos a scale
				sign(velH);
			}else{

				// dá um dash de alerta do inimigo
				x = lerp(x, obj_player.x, 0.07);
				
			}
			
			
			//APÓS CORRIGIR A PERSEGUIÇÃO DESCOMENTAR ESTE CÓDIGO
			
			// caso colida com a visão de ataque
			if(view_atk_player){
				estado = "atacando";
				image_index = 0;
			}
		}else{
			estado = choose("parado","andando");
			check_visao = false;
		}

	}
	break;
	
	// caso esteja atacando
	case "atacando":{
		if(sprite_index != sprite_attack){
			sprite_index = sprite_attack;
		}
		
		// verificamos a direção do player
		velH = lengthdir_x(spd_enemy, dir);
		
		/*
			Se o frame da animação for maior que 3 e dano for vazio e o frame da animação for menor que 7
		*/
		if(image_index >= 3 && dano == noone && image_index < 7){
			
			// criamos a colisão do dano
			dano = instance_create_layer(x + sprite_width/3, y - sprite_height/2, "Enemies", obj_dano);
			
			// damos valor a este dano
			dano.dano = ataque;
			//dano.pai = id;
			
		}
		
		/*
			Se o frame da animação foi igual ou maior que 7 e o dano for diferente de vazio
		*/
		if(image_index >= 7 && dano != noone){
			
			// destroi a instancia criada do dano e deixa ele vazio novamente
			instance_destroy(dano);
			dano = noone;
			
			// se perder a visão de ataque ele continua perseguindo
			if(!view_atk_player){
				estado = "perseguindo";
				image_index = 0;
				check_visao = true;
			}
		}
	}
	break;

}
