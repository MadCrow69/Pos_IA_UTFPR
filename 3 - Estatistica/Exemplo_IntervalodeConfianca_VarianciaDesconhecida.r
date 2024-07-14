
#1º passo: descrição dos dados do problema
#Amostra: 9, 8, 12, 7, 9, 6, 11, 6, 10, 9
#Média amostral:
#Desvio-padrão amostral: 
#Tamanho da amostra (n): 10
#Nível de confiança: 95%

#9 3
#8 1
#12 1
#7 1
#6 2
#11 1
#10 1

#2º passo: criação da tabela de frequência com os valores
#da amostra
tabelafrequencia <- matrix(1:14, nrow = 7)
tabelafrequencia

tabelafrequencia[1,1] <- 9
tabelafrequencia[1,2] <- 3
tabelafrequencia[2,1] <- 8
tabelafrequencia[2,2] <- 1
tabelafrequencia[3,1] <- 12
tabelafrequencia[3,2] <- 1
tabelafrequencia[4,1] <- 7
tabelafrequencia[4,2] <- 1
tabelafrequencia[5,1] <- 6
tabelafrequencia[5,2] <- 2
tabelafrequencia[6,1] <- 11
tabelafrequencia[6,2] <- 1
tabelafrequencia[7,1] <- 10
tabelafrequencia[7,2] <- 1

tabelafrequencia

#3º passo: soma dos elementos da amostra utilizando a 
#tabela de frequência
#Somatório xi . fi
soma <- 0
for (i in 1:7){
  soma <- soma + tabelafrequencia[i,1] * tabelafrequencia[i,2]
}
soma

#4º passo: média amostral (x), considerando tamanho da amostra (n)
#Somatório xi . fi / n
n <- 10
x <- soma/n
x

#5º passo: variância amostral (S)
#Somatório (xi - x)^2  . fi / n - 1
soma <- 0
for (i in 1:7){
  soma <- soma + (tabelafrequencia[i,1] - x)^2 * tabelafrequencia[i,2]
}
soma

variancia <- soma/(n - 1)
variancia

#6º passo: cálculo do desvio-padrão
desvio_padrao <- sqrt(variancia)
desvio_padrao

#7º passo: calcular o intervalo de confiança
#Nível de significância (p) = 5% ou 0,05
#Graus de liberdade (gl): (n - 1) = 9
#Intervalo de confiança (IC) = média amostral + ou -
# tc . desvio-padrão / raiz quadrada do tamanho da amostra

tc <- 2.262
ICsoma = x + tc * desvio_padrao/sqrt(n)
ICsoma

ICsubtracao = x - tc * desvio_padrao/sqrt(n)
ICsubtracao