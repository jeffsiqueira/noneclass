/// @description Verificando transições de tela


if(game_over == true){

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
	
	var qtd = h * 0.15;
	valor = lerp(valor, 1, 0.05);
	
	// desenhando retangulo na tela
	draw_set_color(c_black)
		
	// esmaecendo a tela
	draw_set_alpha(valor - .2);
	draw_rectangle(x1, y1, x2, y2, false);
	
	// retangulo de cima
	draw_set_alpha(1);
	draw_rectangle(x1, y1, x2, y1 + qtd * valor, false);
	
	// retangulo de baixo
	draw_rectangle(x1, y2, x2, y2 - qtd * valor, false);
	
	draw_set_alpha(1);
	draw_set_color(-1);
		
	if(valor >= 0.85){
		// fazemos um efeito para os textos aparecerem
		alpha_font = lerp(alpha_font, 1, 0.01);
		
		draw_set_alpha(alpha_font);
		// escrevendo na Game Over na tela
		draw_set_font(fnt_dogica_pixel_big);
		draw_set_valign(1)
		draw_set_halign(1)
		draw_text(meio_w, meio_h-60, "GAME OVER");
	
		draw_set_font(fnt_dogica_pixel_medium);
		draw_text(meio_w, meio_h-30, texto);
		
		draw_set_font(fnt_dogica_pixel_small);
		draw_text(meio_w, meio_h+10, "Aperte ENTER para reiniciar o Jogo");
		draw_set_font(-1);
		draw_set_valign(-1);
		draw_set_halign(-1);
		draw_set_alpha(1);
	}
}else{
	valor = 0;
}