
#Calcular intervalo de confiança com base na média e variância conhecida
#Considerar que trata-se de uma distribuição normal

#1º passo: extração de dados do enunciado
#Desvio padrão populacional: 5 horas
#Amostra (n): 100 peças
#Média amostral: 500 horas
#Nível de confiança: 0,95
#Tamanho da população é desconhecido

#2º passo: atribuição dos dados para variáveis criadas no script
desvio_padrao <- 5
n <- 100
x <- 500

#3º passo: obtenção do Z crítico na tabela de distribuições,
#considerando uma área na distribuição normal de 0,475
Zc <- 1.96

#4º passo: aplicação da equação para calcular o intervalo de confiança,
#conforme a situação
#Intervalo de confiança - soma
ICsoma <- x + Zc * desvio_padrao/sqrt(n)

#Intervalo de confiança - subtração
ICsubtracao <- x - Zc * desvio_padrao/sqrt(n)

#5º passo: apresentação dos resultados
ICsoma
ICsubtracao