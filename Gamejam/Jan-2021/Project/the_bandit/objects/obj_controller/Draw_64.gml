/// @description 
var n_quadros = global.n_quadro;
var tempo = obj_tempo.tempo;
tempo = round(tempo); // mostramos somente números inteiros


//draw_set_color(c_black);
draw_set_font(fnt_dogica_pixel_medium);
draw_text(x,y, "Quadros Coletados: "+string(n_quadros));

draw_set_font(fnt_dogica_pixel_big);
draw_set_halign(1);
if(tempo != noone) draw_text(x+750 ,y , "Time: "+string(tempo));
draw_set_halign(-1);
draw_set_font(-1);
draw_set_color(-1);