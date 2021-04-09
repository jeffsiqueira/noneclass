/// @description Insert description here
// You can write your code in this editor



if(global.n_quadro == check_quadro){
	saida_ativa = true;
	sprite_index = sprite_saida;
	global.spd_boost = 2;
}

if(place_meeting(x,y,obj_player) && saida_ativa){
	//show_debug_message(destino)
	var transicao = instance_create_layer(x,y,"Instances",obj_transicao);
		transicao.destino = destino;
		transicao.prox_fase = true;
	saida_ativa  = false;
	global.n_quadro = 0;
	global.spd_boost = 1;
}


