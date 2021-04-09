/// @description

// variavel cores

var cores = choose(c_red, c_yellow, c_orange);


// Desenha a sprite principal
draw_self();

// tratando as cores do gpu
gpu_set_blendmode(bm_add);

// Desenha a sprite principal só que maior
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 2, image_yscale * 2, image_angle, cores, .5);

// voltando ao normal o tratamento
gpu_set_blendmode(bm_normal);
