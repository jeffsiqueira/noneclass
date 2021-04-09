/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event / herdando do pai
event_inherited();

// definindo um valor de ponto ganho ao ser destruido
ponto = 20;

// definindo um valor de chance para dropar um item
chance = 30;

// criando variavel de controle para checar se pode ou não se mover para o lado
mover_para_lado = true;

// criando a função atirando

atirando = function(){
	
	// checando se já está aparecendo na Room
	if(y >= 0) {
		
		// criando o tiro 
		instance_create_layer(x, y + sprite_height/2, "Tiro", obj_tiro_enemy_2);
	}
}