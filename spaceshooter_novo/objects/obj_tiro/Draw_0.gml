/// @description Criando efeito de brilho


// Desenhando a sprite padrão
draw_self();

// alterando como o video trata as cores
gpu_set_blendmode(bm_add);

// Desenhando o brilho
draw_sprite_ext(spr_brilho, image_index, x, y, image_xscale * 0.7, image_yscale * 0.7, image_angle, cores, 0.5);

// resetando o tratamento e voltando ao normal
gpu_set_blendmode(bm_normal);