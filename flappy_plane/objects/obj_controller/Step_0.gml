 /// @description Checa o evento continuamente



// Aqui multiplicamos os pontos com o level da fase
pontos += 0.1 * global.level;

// Ganhando level ao alcançar 100 pontos
if(pontos > prox_level){
	
	// aumenta em 1 o level alcançado
	global.level++;
	audio_play_sound(snd_level_up,1,false);
	
	// cada vez que alcança 1 level, é multiplicado a pontuação para alcançar o próximo level
	prox_level *= 2;
	
}


// aumenta a velocidade de movimento do background
// pegando a layer do background
var background = layer_get_id("Background");
layer_hspeed(background, -1 - global.level);

var bg_chao = layer_get_id("bg_chao");
layer_hspeed(bg_chao, -3 - global.level);