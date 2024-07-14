##########
# Aluno Diego O. Antunes
# Materia de Estatistica
# Exercicio Aula 3


# Carregando o dataset mtcars
data(mtcars)

# Cálculo da moda do número de cilindros
moda_cilindros <- mode(mtcars$cyl)

# Apresentando a moda
print(paste("Moda do número de cilindros:", moda_cilindros))


##########
# Carregando o dataset USArrests
data(USArrests)

# Função para calcular a variância populacional
varianca_pop <- function(dados) {
  # Número de elementos na população (N)
  N <- length(dados)

  # Soma dos quadrados dos desvios em relação à média populacional
  soma_quadrados_desvios <- sum((dados - mean(dados))^2)

  # Variância populacional (sigma^2)
  varianca_populacional <- soma_quadrados_desvios / N

  # Retorna a variância populacional
  return(varianca_populacional)
}

# Cálculo da variância populacional para prisões por assalto
varianca_assaltos <- varianca_pop(USArrests$Assault)

# Apresentando a variância populacional
print(paste("Variância populacional para prisões por assalto:", varianca_assaltos))

##########
# Carregando o dataset USArrests
data(USArrests)

# Selecionando linhas pares
linhas_pares <- USArrests[seq(2, length(USArrests), by = 2), ]

# Cálculo das medidas descritivas
media_pares <- mean(linhas_pares$Murder)
mediana_pares <- median(linhas_pares$Murder)
varianca_pares <- var(linhas_pares$Murder)
desvio_padrao_pares <- sd(linhas_pares$Murder)

# Apresentando as medidas descritivas
print("Medidas descritivas para linhas pares do USArrests (Assassinatos):")
print(paste("Média:", media_pares))
print(paste("Mediana:", mediana_pares))
print(paste("Variância:", varianca_pares))
print(paste("Desvio Padrão:", desvio_padrao_pares))
