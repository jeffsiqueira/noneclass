 /// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// corrigindo velocidade
speed = 7;

// direcionando o tiro para o player

/* 
	usamos "direction" para aplicar a direção do tiro e o point_direction para
	configurar o x1 e y1 que é a minha posição inicial, 
	x2 e y2 que é a posição que eu quero ir	
*/
// checando se o player existe no jogo
if(instance_exists(obj_player)){
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
	// ajustando o angulo do tiro e somando + 90º para correção do angulo da sprite
	image_angle = direction + 90;
}


