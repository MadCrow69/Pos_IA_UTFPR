

# Atividade dos 6 atendentes
# Probabilidade de um atendente ocupado: 0.6

#Variável aleatória discreta: X

#k = 0
#P(X = 0) = 1 * 0.6^0 * 0.4^6

#k = 1
#P(X = 1) = 6 * 0.6^1 * 0.4^5

#k = 2
#P(X = 2) = 15 * 0.6^2 * 0.4^4

#P(X = 3) = 20 * 0.6^3 * 0.4^3

#P(X = 4) = 15 * 0.6^4 * 0.4^2

#P(X = 5) = 6 * 0.6^5 * 0.4^1

#P(X = 6) = 1 * 0.6^6 * 0.4^0

#Combinação 
#Cn, p = n! / p!(n - p)!

#Primeira função de probabilidade - utilização da variável k
#P(X = k) = C6,k * 0.6^k * 0.4^(6 - k), k = {1, 2, 3, 4, 5, 6}
#P(X = k) = 0.6^k * 0.4^(6-k), k = {0}
#Pode ser K = {0, 6} para a segunda parte da primeira função, visto que nesses dois casos, o valor da combinação é 1


#Outra resposta possível
#Segunda função de probabilidade - utilização da variável k
#P(X = k) = C6,k * 0.6^k * 0.4^(6 - k), k = {0, 1, 2, 3, 4, 5, 6}

library(gtools)
combinacoes <- nrow(combinations(6,6))
combinacoes

combinacoes <- ncol(combn(6,0))
combinacoes
#P(X = k) = C6,k * 0.6^k * 0.4^(6 - k), k = {0, 1, 2, 3, 4, 5, 6}






#Atividade do circuito elétrico com resistores. Ver
# a figura da atividade
#P(A OU C) = P(A) + P(C) - P(A intersecção C)
#P(W OU T) = P(W) + P(T) - P(W intersecção T)
#P(W OU T) = 0.85 + 0.85 - 0.85 * 0.85
PWT <- 0.85 + 0.85 - 0.85 * 0.85
PA <- PWT

#P(K) = 0.9
PK <- 0.9

#P(A OU B OU C) = P(A) + P(B) + P(C)
# - P(A intersecção B) - P(A intersecção C)
# - P(B interesecção C) + P(A interseção B intersecção C)
#P(X OU Y OU Z) = 
PXYZ <- 0.7 + 0.7 + 0.7 - 0.7 * 0.7 - 0.7 * 0.7 - 0.7 * 0.7 + 0.7 * 0.7 * 0.7
PXYZ
PB <- PXYZ

#P(PA PK PB)
P <- PA * PK * PXYZ
P







#Probabilidade de acertar os 6 números da Mega-Sena
#C60,6 = 60! / 6!(60 - 6)! = 60! / 6!54! = 
Numerador <- 60 * 59 * 58 * 57 * 56 * 55
Denominador <- 6 * 5 * 4 * 3 *2 * 1
CombinacaoMegaSena <- Numerador/Denominador
CombinacaoMegaSena
