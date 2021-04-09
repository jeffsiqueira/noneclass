/// @description

// Inherit the parent event
event_inherited();


/*
	ZigZag do Tiro no Step
	
	Mudando a direção depois que se moveu X pixels
	Pegar a minha posição inicial primeiro
	Verificar se movimentei 50 pixel para direita
*/

/*
	Checando se minha posição atual é MAIOR que minha posição inicial + 50
	ou se minha posição atual é MENOR que minha posição inicial - 50
*/
if(x > xstart + 50 or x < xstart - 50){
	hspeed *= -1;
}

// Checando se me movi 50 pixels para esquerda
// Checando se minha posição atual é MENOR que minha posição inicial - 50
/*if(x < xstart - 50){
	hspeed *= -1;
}*/