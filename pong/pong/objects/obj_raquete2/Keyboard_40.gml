/// @description 

// Checa o limite de movimentação dentro da Room
// se o Y for menor que 416 ele continuará descendo
if(y < 416){
	y = y + velY;
}

// desativa a I.A. ao clicar na tecla
automatico = false;