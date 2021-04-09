/// @description Incia o evento

// configura a variavel de ponto
pontos = 0;

//Executa o alarme a cada 60 frames = 1 segundo
alarm[0] = room_speed;

// variavel global do level
global.level = 1;

// variavel de pontuação inicial
// a cada X pontos o próximo level será atualizado
prox_level = 100;


// Iniciando a música de fundo 
audio_play_sound(snd_musica_fundo, 1, true);
