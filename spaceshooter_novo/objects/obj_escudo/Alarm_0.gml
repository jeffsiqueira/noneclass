/// @description Ativo a cada 2 segundos

//show_debug_message("Ativei o Alarm!");

// voltamos o frame anterior da animação SE o frame for MAIOR que 0
if( image_index > 0){
	
	// diminuindo os frames da animação
	image_index--;
	
	// diminuindo a opacidade da imagem
	image_alpha -= .2;
	
// caso já esteja em 0 ele se auto destroi
}else{
	instance_destroy();
}


// reiniciamos o alarme novamente em 2 segundos
alarm[0] = room_speed * 2;