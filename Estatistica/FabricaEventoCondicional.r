#Evento condicional - Fábrica de componentes

#Matriz para o entendimento da situação das
#linhas de montagem de uma fábrica em um dia
montagem <- matrix(1:4, nrow = 2)
montagem

#Componentes são montados em uma fábrica que usa 
#duas linhas de montagem: 1 e 2. A linha 1 usa 
#equipamentos mais antigos do que a linha 2, sendo mais 
#lenta e menos confiável. Em um determinado dia, 
#a linha 1 montou 8 componentes, dos quais 2 foram 
#identificados como defeituosos; e a linha 2 montou 
#1 defeituoso e 9 sem defeitos.

montagem[1,1] <- 2
montagem[1,2] <- 6
montagem[2,1] <- 1
montagem[2,2] <- 9
montagem

#P(escolha de componente da linha 1) = 8/18

#P(escolha de componente da linha 1 | escolha de componente defeituoso)
#Evento A: escolha de componente da linha 1
#Evento C: escolha de componente defeituoso
#P(A|C) = P(intersecção de A e B) / P(C)
#P(A|C) = 2/18 / 3/18 = 2/3
