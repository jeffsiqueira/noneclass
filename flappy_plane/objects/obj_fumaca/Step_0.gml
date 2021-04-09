/// @description Executa o evento continuamente


// ajustamos o tamanho da imagem para ela ir crescendo
image_xscale += 0.01;
image_yscale += .01;

// a imagem irá sumir gradativamente
image_alpha -= .008;

// destruindo o obj após ficar transparente

if(image_alpha <= 0){
	instance_destroy();
}