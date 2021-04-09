/// @description

// pegamos a largura da tela
/*var x1 = 0;
var x2 = view_wport[0] * 2;
//var meio_w = x1 + w/2;
	
// pegamos a altura da tela
var y1 = 0;
var y2 = view_hport[0] * 2;
//var meio_h = y1 + h/2;*/

//if(iniciar_objetivo == true){

	// pegamos a largura da tela
	var x1 = camera_get_view_x(view_camera[0]);
	var w = camera_get_view_width(view_camera[0]);
	var x2 = x1 + w;
	var meio_w = x1 + w/2;
	
	// pegamos a altura da tela
	var y1 = camera_get_view_y(view_camera[0]);
	var h = camera_get_view_height(view_camera[0]);
	var y2 = y1 + h;
	var meio_h = y1 + h/2;
	
	//var qtd = y2 * 0.15;
	valor = lerp(valor, 1, 0.05);
	
	// desenhando retangulo na tela
	draw_set_color(c_black)
		
	// esmaecendo a tela
	draw_set_alpha(valor - .2);
	draw_rectangle(x1, y1, x2, y2, false);
	
	// retangulo de cima
	/*draw_set_alpha(1);
	draw_rectangle(x1, y1, x2, y1 + qtd * valor, false);
	
	// retangulo de baixo
	draw_rectangle(x1, y2, x2, y2 - qtd * valor, false);*/
	
	draw_set_alpha(1);
	draw_set_color(-1);
		
	if(valor >= 0.85){
		// fazemos um efeito para os textos aparecerem
		alpha_font = lerp(alpha_font, 1, 0.02);
		
		draw_set_alpha(alpha_font);
		// escrevendo na Game Over na tela
		draw_set_font(fnt_dogica_pixel_big);
		draw_set_valign(1)
		draw_set_halign(1)
		draw_text(meio_w, meio_h-90, "The Bandit");
	
		draw_set_font(fnt_dogica_pixel_small);
		draw_text(meio_w, meio_h-60, "Seu objetivo é roubar todos os quadros sem");
		draw_text(meio_w, meio_h-45, "ser pego pelos guardas.");
		draw_text(meio_w, meio_h-30, "Ah! não deixe o tempo esgotar!");
		
		draw_sprite_ext(spr_teclas,0,256,157,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		draw_sprite_ext(spr_bandit_move,1,173,126,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		draw_sprite_ext(spr_bandit_climber,0,229,126,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		draw_sprite_ext(spr_bandit_climber_finish,0,379,152,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		draw_sprite_ext(spr_bandit_action,2,229,178,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		
		draw_set_font(fnt_dogica_pixel_small);
		draw_text(meio_w-30, meio_h+80, "Para jogar aperte");
		draw_sprite_ext(spr_tecla_enter,0,303,194,image_xscale,image_yscale,image_angle,image_blend,alpha_font)
		draw_set_font(-1);
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_alpha(1);
	}
//}else{
	//valor = 0;
	
//}