/// @description 

// Checa o limite de movimentação dentro da Room
// se o Y for maior que 64 ele continuará subindo
if(y > 64){
	y = y - velY;
}

// desativa a I.A. ao clicar na tecla
automatico = false;