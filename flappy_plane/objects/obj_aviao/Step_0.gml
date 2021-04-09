/// @description Evento continuo



//Limita a velocidade de queda
if(vspeed < 4){
	// faz com que a velocidade da gravidade aumente progressivamente
	vspeed += 0.1;
}else{
	vspeed = 4;
}