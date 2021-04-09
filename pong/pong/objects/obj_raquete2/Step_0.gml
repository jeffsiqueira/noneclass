/// @description 

// verifica se a I.A. está ativa
if(automatico == true){
	// pega a posição Y da bola e aplica na posição Y da raquete
	//y = obj_bola.y
	
	// ajustando a posição do Y
	y = lerp(y,obj_bola.y,0.05);
}

//corrigindo a posição da raquete quando chega no limite da tela
// se o Y for menor que 64, Y será igual a 64
if(y < 64){
	y = 64;
}
// se o Y for maior que 416, Y será igual a 416
if(y > 416){
	y = 416;
}


