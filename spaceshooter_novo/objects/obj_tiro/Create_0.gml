/// @description iniciando variaveis

// configurando a velocidade do tiro
vspeed = -10;

// configurando o tamanho do tiro
image_yscale = 3;
image_xscale = 3;

// sprite do brilho
spr_brilho = spr_brilho_tiro_1;


/*
	Colocamos a paleta de cores aqui para que o tiro não fique brilhando todo o tempo, pois o Draw é similar
	ao evento Step, ou seja, fica executando todo o tempo.
*/
cores = choose(c_lime, c_red, c_yellow, c_teal);

