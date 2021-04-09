/// @description Usamos este evento para garantir que rode depois que o player se nover

/*
	Se o valor do alvo for "noone" se auto destroi
	o sinal !alvo é igual a alvo == noone
	
	Ou se o alvo não existe mais...
*/
if( !alvo or !instance_exists(alvo) ){

	instance_destroy();
	
}


// Pegamos o X e o Y e assemelhamos com o do alvo para seguimos ele
x = alvo.x;
y = alvo.y;

