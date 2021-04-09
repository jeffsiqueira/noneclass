/// @description Colisão
move_bounce_solid(false);

//aumentado a velocidade da bola
speed = speed + 0.1;


// quando a bola tocar irá fazer o barulho de boing
audio_play_sound(snd_boing,1,false);