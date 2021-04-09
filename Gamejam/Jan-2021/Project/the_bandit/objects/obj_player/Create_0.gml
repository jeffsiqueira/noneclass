/// @description Insert description here
// You can write your code in this editor

// Gravidade improvisada
gravidade = .2;
massa = 1;

velV = 0;
velH = 0;
spd_player = 1;

vida = 1;

xscale = 1;
spd_climber = 1;
check_climber = false;
check_escada = false;
check_chao = false;
check_parede = false;
check_acao = false;
get_item = false;

// Registando os sprites
sprite_idle = spr_bandit_stay;
sprite_move = spr_bandit_move;
sprite_steal = spr_bandit_action;
sprite_climber = spr_bandit_climber;
sprite_climber_f = spr_bandit_climber_finish;
sprite_gameover = spr_bandit_gameover;


estado = "parado";