# Carregar o pacote necessário
library(readr)
library(dplyr)


# Carregar os dados
dados <- read_csv("D:\\gitT\\Pos_IA_UTFPR\\Estatistica\\INFLUD24-25-03-2024.csv")

# Substituir valores NA por 0 na coluna de resultados de PCR
dados$PCR_RESUL[is.na(dados$PCR_RESUL)] <- 0

# Questão 1
# Filtrar dados para o estado de São Paulo
dados_sp <- dados[dados$SG_UF_NOT == "SP",]

# Calcular a média das idades
media_idades_sp <- mean(dados_sp$NU_IDADE_N, na.rm = TRUE)

# Imprimir a média das idades
print(paste("A média das idades das pessoas no estado de São Paulo é:", media_idades_sp))

# Questão 2
# Calcular o desvio-padrão das idades
desvio_padrao_idades_sp <- sd(dados_sp$NU_IDADE_N, na.rm = TRUE)

# Imprimir o desvio-padrão das idades
print(paste("O desvio-padrão das idades das pessoas no estado de São Paulo é:", desvio_padrao_idades_sp))


# Questão 4
# Filtrar dados para São Paulo e Minas Gerais
dados_sp <- dados[dados$SG_UF_NOT == "SP", ]
dados_mg <- dados[dados$SG_UF_NOT == "MG", ]

# Verificar a normalidade das distribuições
shapiro.test(dados_sp$PCR_RESUL)
shapiro.test(dados_mg$PCR_RESUL)

# Aplicar o teste t de Student
t.test(dados_sp$PCR_RESUL, dados_mg$PCR_RESUL)



#Questão 5
# Filtrar dados para São Paulo, Minas Gerais e Paraná
dados_sp <- dados %>% filter(SG_UF_NOT == "SP")
dados_mg <- dados %>% filter(SG_UF_NOT == "MG")
dados_pr <- dados %>% filter(SG_UF_NOT == "PR")


# Calcular média e desvio-padrão das idades para São Paulo
media_idades_sp <- mean(dados_sp$NU_IDADE_N, na.rm = TRUE)
desvio_padrao_idades_sp <- sd(dados_sp$NU_IDADE_N, na.rm = TRUE)
print(paste("A média das idades em São Paulo é:", media_idades_sp))
print(paste("O desvio-padrão das idades em São Paulo é:", desvio_padrao_idades_sp))

# Verificar a normalidade das distribuições de PCR
normalidade_sp <- shapiro.test(dados_sp$PCR_RESUL)
normalidade_mg <- shapiro.test(dados_mg$PCR_RESUL)
normalidade_pr <- shapiro.test(dados_pr$PCR_RESUL)

# Imprimir os resultados dos testes de normalidade
print(normalidade_sp)
print(normalidade_mg)
print(normalidade_pr)

# Verificar se há diferenças estatisticamente significativas entre os resultados de PCR
anova_result <- aov(PCR_RESUL ~ SG_UF_NOT, data = dados %>% filter(SG_UF_NOT %in% c("SP", "MG", "PR")))
summary(anova_result)

# Imprimir resultados do ANOVA
print(summary(anova_result))