/// @description Se colidir com o inimigo 1

// o tiro se auto destroi com a colisão
instance_destroy();

// destroi o alvo que é o inimigo atingido
instance_destroy(other);
