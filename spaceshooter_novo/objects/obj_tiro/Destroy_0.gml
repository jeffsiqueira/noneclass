/// @description Verificação de objeto

// Verifica se o objeto foi destruido
//show_debug_message("destruido!");

// após acertar o inimigo, criamos o impacto do tiro
instance_create_layer(x, y, "Tiro", obj_impacto_tiro);