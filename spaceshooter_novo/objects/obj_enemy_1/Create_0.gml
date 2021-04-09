/// @description iniciando variaveis

// definindo um valor de ponto ganho ao ser destruido
ponto = 10;

// definindo um valor de chance para dropar um item
chance = 20;

// Configurando a velocidade do inimigo
vspeed = 2;

/* 
	Iniciando o alarme entre 1 e 3 segundos;
	Pegamos a velocidade da Room e multiplicamos pelo resultado randomico configurado
*/ 
alarm[0] = room_speed * random_range(1,4);

// Caso esteja colidindo com outro inimigo, se destroy
if( place_meeting(x, y, obj_enemy_1) ){
	
	// não executando o evento destroy
	instance_destroy(id,false);

}

// registrando metodo para atirar
atirando = function(){
	// criamos o tiro se o inimigo estiver aparecendo na tela
	if (y >= 0) instance_create_layer(x-3, y + sprite_height/3, "Tiro", obj_tiro_enemy_1);
}


// metodo para dropar item
///@method drop_item(valor_chance)
drop_item = function(_chance){
	
	// Criamos um variável para registramos um valor de 0 à 100
	var valor = random(100);
	
	//Se o a "chance" for menor que o "valor" o inimigo dropa o item
	if( valor < _chance ){
		instance_create_layer(x, y, "Tiro", obj_power_up);
	}
	
}