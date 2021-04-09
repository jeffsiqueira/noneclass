/// @description 

// pegamos a largura da tela
var x1 = 0;
var x2 = view_wport[0] * 2;
//var meio_w = x1 + w/2;
	
// pegamos a altura da tela
var y1 = 0;
var y2 = view_hport[0] * 2;
//var meio_h = y1 + h/2;


if(prox_fase == true){
	alpha += 0.025;
}

if(alpha >= 1){
	//show_debug_message(destino);
	room_goto(destino);
}

if(prox_fase == false){
	alpha -= 0.025;
}

if(alpha <= 0 && prox_fase == false){
	instance_destroy();
}

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(x1, y1, x2, y2, false);


draw_set_alpha(1);
draw_set_color(-1);