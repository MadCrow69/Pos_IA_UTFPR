# Carregar o conjunto de dados USArrests
data(USArrests)

# Ordenar o conjunto de dados pela porcentagem da população urbana
USArrests_ordenado <- USArrests[order(USArrests$UrbanPop), ]

# Função para calcular as médias de Murder, Assault, e Rape
taxas_med_crime <- function(data) {
  sapply(data[, c("Murder", "Assault", "Rape")], mean)
}

# Calcular e exibir as médias para os 5 estados com as menores populações urbanas
cat("Médias para os 5 estados com as menores populações urbanas:\n")
print(taxas_med_crime(head(USArrests_ordenado, 5)))

# Calcular e exibir as médias para os 5 estados com as maiores populações urbanas
cat("\nMédias para os 5 estados com as maiores populações urbanas:\n")
print(taxas_med_crime(tail(USArrests_ordenado, 5)))
