/// @description Executa a cada 1 segundo (60 frames)


// diminuimos a opacidade da imagem a cada alarm

image_alpha -= .1;

// se a opacidade da imagem for MENOR ou IGUAL a .5 ela se auto destroi
if(image_alpha <= 0){
	instance_destroy(id, false);
}

alarm[0] = room_speed;