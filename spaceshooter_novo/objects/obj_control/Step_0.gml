/// @description Verifica a cada frame


// verificando se o player NÃO existe E se NÃO foi criado a sequence de Game Over
if ( !instance_exists(obj_player) and !game_over_seq ){
	
	// chamamos a sequence do GameOver criada
	game_over_seq = layer_sequence_create("Sequences", room_width/2, room_height/2, sqn_gameover);
	
}
