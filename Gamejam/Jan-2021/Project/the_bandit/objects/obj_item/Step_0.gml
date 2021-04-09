/// @description 
if(get_item){
	
	// verificamos se o obejto está tocando o player
	if(place_meeting(x,y,obj_player) && !coletado){
		global.n_quadro++;
		//show_debug_message(global.n_quadro);
		coletado = true;
	}
}

if(coletado) instance_destroy();