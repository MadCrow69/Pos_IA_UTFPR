
#Evento condicional - Barablho

#Criação do baralho
naipes <- c("Copas","Paus","Ouros","Espadas")
numeros <- c("As","Dois","Tres","Quatro","Cinco","Seis","Sete","Oito","Nove","Dez","Valete","Dama","Rei")

dfbaralho <- expand.grid(numero = numeros,naipe = naipes)
dfbaralho

baralho <- paste(dfbaralho$numero,dfbaralho$naipe)
baralho

#Probabilidade de retirar um Rei considerando que foi
#retirada uma carta vermelha

#Evento A: retirar um Rei
#P(A) = ?
cartasRei <- c("Rei Espadas","Rei Ouros","Rei Copas","Rei Paus")
cartasRei

baralho %in% cartasRei

mean(baralho %in% cartasRei)
#P(A) = 4/52

#Evento B: retirar uma carta vermelha
#P(B) = ?
cartasOuros <- paste(numeros,"Ouros")
cartasOuros
cartasCopas <- paste(numeros,"Copas")
cartasCopas
cartasCorVermelha <- c(cartasOuros,cartasCopas)
cartasCorVermelha

baralho %in% cartasCorVermelha

mean(baralho %in% cartasCorVermelha)
#P(B) = 26/52

#P(A intersecção B)
cartasReiCorVermelha <- c("Rei Copas","Rei Ouros")
cartasReiCorVermelha

baralho %in% cartasReiCorVermelha

mean(baralho %in% cartasReiCorVermelha)
#P(A intersecção B) = 2/52


#P(A|B) = 2/52 / 1/2 = 4/52