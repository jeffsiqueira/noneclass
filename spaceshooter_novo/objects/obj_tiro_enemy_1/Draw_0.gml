/// @description Efeito do Tiro
// cores do brilho
var cores = choose(c_red, c_fuchsia, c_olive, c_green);

// desenhando a sprite principal
draw_self();

// tratando a cor no video
gpu_set_blendmode(bm_add);

// desenhando o efeito do tiro
draw_sprite_ext(spr_brilho_tiro_inimigo, image_index, x, y, image_xscale * .7, image_yscale * .7, image_angle, cores, 0.5);

// resetando o tratando a cor no video
gpu_set_blendmode(bm_normal);