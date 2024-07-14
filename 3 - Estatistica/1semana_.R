# Carregar o conjunto de dados
data(USArrests)

# Calcular a quantidade de registros
n_registros <- nrow(USArrests)

# Inicializar variáveis para armazenar as somas
soma_assalto_alta <- soma_assassinato_alta <- soma_estupro_alta <- 0
soma_assalto_baixa <- soma_assassinato_baixa <- soma_estupro_baixa <- 0

# Ordenar os estados pela população urbana
indices_ordenados <- order(USArrests$UrbanPop)

# Identificar os índices dos 5 estados com maiores e menores populações urbanas
indices_alta_pop <- tail(indices_ordenados, 5)
indices_baixa_pop <- head(indices_ordenados, 5)

# Calcular as somas para os estados com maiores populações
for (i in indices_alta_pop) {
  soma_assalto_alta <- soma_assalto_alta + USArrests$Assault[i]
  soma_assassinato_alta <- soma_assassinato_alta + USArrests$Murder[i]
  soma_estupro_alta <- soma_estupro_alta + USArrests$Rape[i]
}

# Calcular as somas para os estados com menores populações
for (i in indices_baixa_pop) {
  soma_assalto_baixa <- soma_assalto_baixa + USArrests$Assault[i]
  soma_assassinato_baixa <- soma_assassinato_baixa + USArrests$Murder[i]
  soma_estupro_baixa <- soma_estupro_baixa + USArrests$Rape[i]
}

# Calcular as médias
media_assalto_alta <- soma_assalto_alta / 5
media_assassinato_alta <- soma_assassinato_alta / 5
media_estupro_alta <- soma_estupro_alta / 5

media_assalto_baixa <- soma_assalto_baixa / 5
media_assassinato_baixa <- soma_assassinato_baixa / 5
media_estupro_baixa <- soma_estupro_baixa / 5

# Exibir os resultados
cat("Médias para os 5 estados com maiores populações urbanas:\n")
cat("Assalto:", media_assalto_alta, "\nAssassinato:", media_assassinato_alta, "\nEstupro:", media_estupro_alta, "\n\n")

cat("Médias para os 5 estados com menores populações urbanas:\n")
cat("Assalto:", media_assalto_baixa, "\nAssassinato:", media_assassinato_baixa, "\nEstupro:", media_estupro_baixa, "\n")
