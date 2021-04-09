/// @description 



// O comando randomize() ele muda a "seed" do jogo antes de escolher um valor aleatório
randomize()

// variavel padrão do GM2 para direção cardial (0, 90, 270, 360)
//direction = random(359); // O comando random() irá aleatorizar os números de 0 à 359
direction = choose(45,135,225,315); // O comando choose irá aleatorizar de forma mais precisa, neste caso aleatorizar nas diagonais


// iniciando o meu alarme para 1 segundo
// a variavel GM2 room_speed pega a velocidade/frame que foi configurado para a ROOM, no caso 60 Frames
alarm[0] = room_speed;