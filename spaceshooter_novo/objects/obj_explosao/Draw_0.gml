/// @description 



// desenha a sprite principal
draw_self();


// tratando as misturas de cores do gpu
gpu_set_blendmode(bm_add);

// desenha a sprite principal só que maior
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale * 1.5, image_yscale * 1.5, image_angle, cores, 0.5);

// voltando ao normal o tratamento
gpu_set_blendmode(bm_normal);

