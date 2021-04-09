/// @description 

draw_self();

draw_rectangle(x, y - sprite_height/3, x + (dist * xscale), y - 14, true);

draw_rectangle_color(x, y - sprite_height/3, x + (dist_atk * xscale), y - 14, c_red,c_red,c_red,c_red,true);

draw_rectangle_color(x + (19 * xscale), y - sprite_height/3, x + (50 * xscale), y - 14, c_blue,c_blue,c_blue,c_blue,true);