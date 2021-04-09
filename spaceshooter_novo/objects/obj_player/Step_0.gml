/// @description 

// criando variaveis para as ações do player
var up, left, down, right, reset, shield;
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
reset = keyboard_check_pressed(vk_enter);
shield = keyboard_check_pressed(ord("E"));

//if(reset) game_restart();


vel_v = (down - up) * spd_player;
vel_h = (right - left) * spd_player;

y += vel_v;
x += vel_h;

// atirando com o player
atirando();

// criando o escudo
if( shield and quant_escudo > 0){
	
	// armazenamos a instancia em uma variavel temporaria para passar o id do player
	var i_shield = instance_create_layer(x, y, "Escudo", obj_escudo);
	
	// agora a variavel alvo receberá o id do player
	i_shield.alvo = id;
	
	quant_escudo--;
}

// Ferramentas de debug
// se o level for menor que 5 irá aumentar o level
/*if(keyboard_check_pressed(vk_up)){
	if (level_tiro < 5){
		level_tiro++	
	}
}
// se o level for maior que 1 irá diminuir o level
if(keyboard_check_pressed(vk_down)){
	if (level_tiro > 1){
		level_tiro--	
	}
}

// aumentar a espera do tiro em 10%
if(keyboard_check_pressed(vk_left)){
	if(espera_tiro < 60){
		espera_tiro *= 1.1;
	}
}

// diminuir a espera do tiro em 10%
if(keyboard_check_pressed(vk_right)){
	if(espera_tiro > 20){
		espera_tiro *= 0.9;
	}
}

show_debug_message(vida);*/