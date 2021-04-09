/// @description 
// o tempo padraão configurado é de 30 segundos

if(tempo != noone){
	// começamos a diminuir o tempo
	if(tempo > 0.1) tempo -= 0.015;
		

	// se o tempo chegar a 0 será Game Over para o Jogador
	if(tempo <= 0.1 && obj_game_controller.game_over == false){
		obj_player.estado = "time_over";
		obj_player.vida -= 1;
		tempo = 0
	}
}