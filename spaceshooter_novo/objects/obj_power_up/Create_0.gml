/// @description 
/*
	Config. básica para os Power UPs
	
	Level do Tiro = 1				|	Limite Max. 5	|	Chances: 10%
	Escudo = 1						|	Limite Max. 3	|	Chances: 20%
	Velocidade do Player = 0.05		|	Limite Max. 10	|	Chances: 45%
	Espera/Frequencia do Tiro = 10%	|	Limite Max. 20	|	Chances: 45%
	
	// Se for maior que 90 o Power UP será do tipo "Level do Tiro"
	// Se for maior que 80 o Power UP será do tipo "Escudo"
	// Se for maior que 45 o Power up será do tipo "Velocidade do Player"
	// Se for menor que 45 o Power Up será do tipo "Espera/Frequencia do Tiro"
*/

// Criamos uma variável que irá randomizar um número de 0 a 100;
chance = random(100);

// sprite do brilho
spr_brilho = spr_brilho_tiro_inimigo;

// iniciando o alarm
alarm[0] = room_speed;


// configurando a velocidade do power up
speed = 2

// configurando a direção que ele andará quando criado de forma aleatoria
direction = random(359);


