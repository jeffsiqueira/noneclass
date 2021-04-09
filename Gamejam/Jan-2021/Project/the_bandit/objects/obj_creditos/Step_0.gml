/// @description 

if(keyboard_check_pressed(vk_enter)){
	var transicao = instance_create_layer(x,y,"Instances",obj_transicao);
		transicao.prox_fase = true;
		transicao.destino = rm_fase_0;
}