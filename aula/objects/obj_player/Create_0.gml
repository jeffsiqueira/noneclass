/// @description curso


//Primeiro código do curso
//show_message("Hello Word!");

//Segundo código mostrar as horas
//show_message("Última hora registrada 15:44");

// Terceiro código pegando Nome, idade, altura e peso e dando print na tela
/*nome = get_string("Digite o seu nome","Carlos");
idade = get_integer("Digite a sua idade",0);
altura = get_integer("Digite a sua altura",0);
peso = get_integer("Digite o seu peso",0);

show_message("Seu nome é "+string(nome)+" e sua idade é "+string(idade)+" anos, sua altura é de "+string(altura)+" e o seu peso é "+string(peso));

gosta_de_pizza = show_question("Você gosta de pizza?");
if(gosta_de_pizza == true){
	show_message("Sim eu gosto!");
}else{
	show_message("Não gosto não!");
}*/


// Operadores aritiméticos
/*
	+ adição
	- subtração
	* multiplicação
	/ divisão
	% resto da divisão
*/
// Calcular a média

/*nota1 = get_integer("Digite a 1ª nota","");
nota2 = get_integer("Digite a 2ª nota","");
nota3 = get_integer("Digite a 3ª nota","");
nota4 = get_integer("Digite a 4ª nota","");

nota_media = (nota1 + nota2 + nota3 + nota4) / 4;
nota_minima = 7;
show_message("Sua nota foi: "+string(nota_media));*/
//show_message(nota_media);

// Operadores relacionais
/*
	> maior do que
	< menor do que
	>= maior ou igual a
	<= menor ou igual a
	== igual a
	!= diferente de
*/

// Operadores Unários aumenta e diminui em 1
/*
	++ incremento em 1
	-- decrement em 1
*/

/* SINTAXE IF e ELSE - Função Condicional*/
/*if(nota_media >= nota_minima){
	show_message("Você foi aprovado!");
}else if (nota_media >= 5){
	show_message("Você ficou de recuperação.");
}else{
	show_message("Você foi reprovado.");
}

show_message("Até o próximo ano. :)");*/


/*idade18 = get_integer("Informe a sua idade antes de continuar","");
if(idade18 >= 18){
	show_message("Seja bem-vindo visitante!");
}else{
	show_message("Você não tem idade para entrar neste site.");
}*/

// Operadores Lógicos
/*
	&&, and = "E" Se ao menos um valor for falso, ele retorna falso
	||, or = "OU" Se ao um valor for verdadeiro, ele retorna verdadeiro
	!, not = Ele inverte valores, se for falso se torna verdeiro, se for verdadeiro se torna falso
*/

/*get_idade = get_integer("Informe a sua idade antes de continuar","");
quiz_idade = show_question("Sua idade é realmente "+string(get_idade)+" anos?");
check_idade = get_idade >= 18 || quiz_idade;
if(check_idade){
	show_message("Seja bem-vindo ao nosso site!");
}else{
	show_message("Você não tem idade para acessar nosso site!");
}*/

// executando a variavel do obj_test
show_message(global.variavel3);