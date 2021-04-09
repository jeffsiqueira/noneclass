/// @description  

// Cria uma variavel temporaria para registrar os valores minimo e máximo do Y da motanha de cima
var montanha_y = random_range(-160,0);

// Cria o obj_montanha_cima na Room
instance_create_layer(864, montanha_y, "Instances", obj_montanha_cima);


/*
	Cria o obj_montanha_baixo na Room
	Usamos a variavel temporaria criada para a montanha de cima e somamos o valor de 640 que equivalem ao
	espaçamento para o avião passar entre ambos os objetos, este valor é a soma das duas montanhas 
	selecionadas na Room
*/
instance_create_layer(864, montanha_y + 640, "Instances", obj_montanha_baixo);


// Executa o alarme a cada 60 frames = 1 segundo * 1, 2 ou 3 de forma aleatória conforme o configurado
// O random_range irá escolhe o valor entre os informados para executar a ação

var tempo_minimo = 1 / (1 + (global.level * 0.1));

alarm[0] = room_speed * random_range(tempo_minimo,2);


