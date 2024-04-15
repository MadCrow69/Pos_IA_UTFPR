##########
# Aluno Diego O. Antunes
# Materia de Estatistica

# Função para calcular a probabilidade de retirar exatamente k bolas vermelhas
probabilidade_bolas_vermelhas <- function(k) {
  # Número total de bolas
  total_bolas <- 6
  # Número de bolas vermelhas
  bolas_vermelhas <- 2
  # Número de retiradas, assumindo que sempre se retiram 2 bolas
  retiradas <- 2
  
  # Calculando a probabilidade usando a função dhyper
  probabilidade <- dhyper(x = k, m = bolas_vermelhas, n = total_bolas - bolas_vermelhas, k = retiradas)
  
  return(probabilidade)
}

# Usando a função
# Por exemplo, calcular a probabilidade de retirar 0, 1 ou 2 bolas vermelhas
prob_0_vermelhas <- probabilidade_bolas_vermelhas(0)
prob_1_vermelha <- probabilidade_bolas_vermelhas(1)
prob_2_vermelhas <- probabilidade_bolas_vermelhas(2)

# Imprimindo os resultados
print(paste("Probabilidade de 0 bolas vermelhas:", prob_0_vermelhas))
print(paste("Probabilidade de 1 bola vermelha:  ", prob_1_vermelha))
print(paste("Probabilidade de 2 bolas vermelhas:", prob_2_vermelhas))
