/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

vspeed = 1.5;

// definindo um valor de ponto ganho ao ser destruido
ponto = 35;

// definindo um valor de chance para dropar um item
chance = 35;

// registrando metodo para atirar
atirando = function(){
	// criamos o tiro se o inimigo estiver aparecendo na tela
	if (y >= 0) {
		var direcao = -80;
		repeat(2){
			var tiro = instance_create_layer(x-3, y + sprite_height/3, "Tiro", obj_tiro_enemy_1);
			tiro.direction = direcao;
			direcao -= 20
		}
	}
}