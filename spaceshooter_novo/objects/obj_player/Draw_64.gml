/// @description Desenhando Atributos

// registramos uma variavel temporaria com o valor da altura da viewport
var altura_gui = display_get_gui_height();
var largura_gui = display_get_gui_width();

// registramos uma variavel temporaria com o valor escolhido para dar espaçamento entre as vidas
var multiplicador = 0
var espaco = 40;

/*
	Usamos o metodo repeat para desenhar as vidas de acordo com o valor da 
	variavel "vida" que criamos no event create
*/
repeat(vida){
	
	// desenhamos a vida usando a sprite da nave
	draw_sprite_ext(spr_player, 0, 40 + (espaco * multiplicador), altura_gui - 40, .3, .3, 0, c_white, 1);
	
	// cada vez que o repeat executar ele somará o espaço entre as vidas
	multiplicador++;
}

// resetamos o multiplicador para usarmos no repeat dos escudos
multiplicador = 0
/*
	Usamos o metodo repeat para desenhar os escudos de acordo com o valor da 
	variavel "quant_escudo" que criamos no event create
*/
repeat(quant_escudo){
	
	// desenhamos o escudo usando a sprite dele mesmo
	draw_sprite_ext(spr_escudo, 2, largura_gui - 40 - (espaco * multiplicador), altura_gui - 40, .2, .2, 0, c_white, 1);
	
	// cada vez que o repeat executar ele subtrairá o espaço entre os escudos
	multiplicador++;
}