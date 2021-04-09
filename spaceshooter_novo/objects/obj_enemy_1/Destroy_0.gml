/// @description Ao ser destruido

instance_create_layer(x, y, "Enemies", obj_explosao);
//show_debug_message("teste")

// primeiro verificamos se a instacia existe
if( instance_exists(obj_control) ){
	obj_control.ganhar_pontos(ponto);
}

// Ativando o metodo de drop de item
drop_item(chance);