/// @description 


// tratando a cor no video
gpu_set_blendmode(bm_add);

// desenhando o efeito do tiro
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_teal, image_alpha);

// resetando o tratando a cor no video
gpu_set_blendmode(bm_normal);