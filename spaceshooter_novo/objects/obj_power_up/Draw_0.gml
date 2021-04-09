/// @description

// desenhando a si mesmo
draw_self();

// Se chance for MAIOR que 90 o power up é do tipo Level do Tiro
if(chance >= 90){
	// registrando as cores do brilho do power up
	var cor = choose(c_red, c_fuchsia);

// Se chance for MAIOR OU IGUAL a 80 o power up é do tipo Escudo
}else if(chance >= 80){
	var cor = choose(c_blue, c_teal);
	
// Se chance for MAIOR OU IGUAL a 45 o power up é do tipo Velocidade do Player
}else if(chance >= 45){
	// registrando as cores do brilho do power up
	var cor = choose(c_green, c_lime);
	
// Se chance MENOR que 45 o power up é do tipo Diminuição da Espera do Tiro
}else if(chance < 45){
	// registrando as cores do brilho do power up
	var cor = choose(c_yellow, c_orange);
}

// alterando como o video trata as cores
gpu_set_blendmode(bm_add);

// Desenhando o brilho
draw_sprite_ext(spr_brilho, image_index, x, y, image_xscale * 0.8, image_yscale * 0.8, image_angle, cor, image_alpha - .45);

// resetando o tratamento e voltando ao normal
gpu_set_blendmode(bm_normal);