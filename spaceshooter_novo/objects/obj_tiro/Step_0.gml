 /// @description Diminuido a Escala do tiro

// lerp é uma função de aproximação, eu faço o meu valor chegar em outro valor por uma porcentagem
// lerp(valor que eu tenho, valor para chegar, porcentagem de aproximação)

image_xscale = lerp(image_xscale, 1, .2);
image_yscale = lerp(image_yscale, 1, .2);