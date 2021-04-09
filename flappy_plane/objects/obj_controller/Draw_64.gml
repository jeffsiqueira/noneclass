/// @description

// Imprimir os pontos na tela

// Mudando a cor do texto
draw_set_color(c_black);

// Escolhendo Font
draw_set_font(fnt_pontos);

// criamos uma variavel temporaria e usamos uma função para arredondar no pontuação
var print_pontos = round(pontos);

// imprimimos a pontuação na tela e convertemos os números em uma string
draw_text(20,20,"Pontos: " + string(print_pontos));

//Resetando a cor e a font do texto
draw_set_color(-1);
draw_set_font(-1);

