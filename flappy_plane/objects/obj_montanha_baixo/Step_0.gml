/// @description Insert description here
// You can write your code in this editor

// Movimenta o objeto para a esquerda
hspeed = -3 - global.level;

//show_debug_message(hspeed);

// destruindo a instancia após sumir da tela

if(x <= -64){
	instance_destroy();
}