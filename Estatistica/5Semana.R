##########
# Aluno Diego O. Antunes
# Materia de Estatistica

# Instalar pacotes necessários, se ainda não estiverem instalados
if (!require("venn")) install.packages("venn", dependencies = TRUE)
library(venn)

# Criar um data frame vazio para 50 pessoas
pessoas <- data.frame(id = 1:50, usa_A = FALSE, usa_B = FALSE, usa_C = FALSE)

# Definir quem usa cada combinação de serviços
# A, B e C
pessoas$usa_A[1:1] <- TRUE
pessoas$usa_B[1:1] <- TRUE
pessoas$usa_C[1:1] <- TRUE

# A e B, excluindo quem já está em A, B e C
pessoas$usa_A[2:6] <- TRUE
pessoas$usa_B[2:6] <- TRUE

# A e C, excluindo quem já está em A, B e C
pessoas$usa_A[7:10] <- TRUE
pessoas$usa_C[7:10] <- TRUE

# B e C, excluindo quem já está em A, B e C
pessoas$usa_B[11:13] <- TRUE
pessoas$usa_C[11:13] <- TRUE

# Somente A
pessoas$usa_A[14:15] <- TRUE

# Somente B
pessoas$usa_B[14:18] <- TRUE

# Somente C
pessoas$usa_C[14:19] <- TRUE

# Agora vamos calcular as interseções corretas para os dados únicos
unique_A <- sum(pessoas$usa_A) - sum(pessoas$usa_A & pessoas$usa_B) - sum(pessoas$usa_A & pessoas$usa_C) + sum(pessoas$usa_A & pessoas$usa_B & pessoas$usa_C)
unique_B <- sum(pessoas$usa_B) - sum(pessoas$usa_A & pessoas$usa_B) - sum(pessoas$usa_B & pessoas$usa_C) + sum(pessoas$usa_A & pessoas$usa_B & pessoas$usa_C)
unique_C <- sum(pessoas$usa_C) - sum(pessoas$usa_A & pessoas$usa_C) - sum(pessoas$usa_B & pessoas$usa_C) + sum(pessoas$usa_A & pessoas$usa_B & pessoas$usa_C)

### Passo 2: Diagrama de Venn

# Criar o diagrama de Venn para visualizar as intersecções
venn(list(A = which(pessoas$usa_A), B = which(pessoas$usa_B), C = which(pessoas$usa_C)))

### Passo 3: Calcular Probabilidades

# Probabilidade de usar somente um serviço
prob_somente_um <- (unique_A + unique_B + unique_C) / 50

# Probabilidade de usar pelo menos um serviço
prob_pelo_menos_um <- sum(pessoas$usa_A | pessoas$usa_B | pessoas$usa_C) / 50

print(paste("Probabilidade de uma pessoa utilizar somente um serviço:", prob_somente_um))
print(paste("Probabilidade de uma pessoa utilizar pelo menos um serviço:", prob_pelo_menos_um))
