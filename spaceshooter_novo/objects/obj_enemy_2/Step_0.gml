/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event / Herdando o código do pai
event_inherited();

var get_room_w = room_width/2;
var get_room_h = room_height/4;

/*
	verificamos o ponto onde queremos iniciar o movimento para o lado e
	verificamos que podemos mover para o lado
*/
if (y > get_room_h and mover_para_lado == true){
	if(x > get_room_w){
		//show_debug_message("Estou na direita!");
		hspeed = -4;
		
		// desligamos a variavel de controle para "desbugar" a movimentação lateral
		mover_para_lado = false;
		
	}else{
		//show_debug_message("Estou na esquerda!");
		hspeed = 4;
		
		// desligamos a variavel de controle para "desbugar" a movimentação lateral
		mover_para_lado = false;
	}
}
