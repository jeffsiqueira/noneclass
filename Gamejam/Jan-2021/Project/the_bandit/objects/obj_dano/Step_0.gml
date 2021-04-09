/// @description 

var col_player = instance_place(x, y, obj_player);
if( col_player ){
	col_player.estado = "hit";
	col_player.vida -= dano;
	instance_destroy();
}
