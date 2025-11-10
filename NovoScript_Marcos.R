#Criei um novo script como pede na questão 9

library(readxl)
base_trabalho <- read_excel("Base_trabalho.xlsx")

#transformando as variáveis qualita$vas em fatores.
base_trabalho$escolaridade <- factor(base_trabalho$escolaridade,
                                     levels = c(1,2,3),
                                     labels = c("Fundademental", "Médio", "Superior"))

base_trabalho$sexo <- factor(base_trabalho$sexo,
                             levels = c(0,1),
                             labels = c("Feminino", "Masculino"))

base_trabalho$filhos = as.factor(base_trabalho$filhos)
base_trabalho$casado = as.factor(base_trabalho$casado)

#medidas da variavel score_periculosidade
#media
media_periculosidade = mean(base_trabalho$score_periculosidade)
#1° quartil
pq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.25)
#mediana
mediana_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.50)
#3° quartil
tq_periculosidade = quantile(base_trabalho$score_periculosidade, probs = 0.75)
#variancia
var_periculosidade = var(base_trabalho$score_periculosidade)
#desvio padrao
dp_periculosidade = sd(base_trabalho$score_periculosidade)

#medidas da variavel tempo_preso

#media
media_tempo_preso = mean(base_trabalho$tempo_preso)
#1°quartil
pq_tempo_preso = quantile(base_trabalho$tempo_preso, probs = 0.25)
#mediana
mediana_tempo_preso = quantile(base_trabalho$tempo_preso, probs = 0.50)
#3° quartil
tq_tempo_preso = quantile(base_trabalho$tempo_preso, probs = 0.75)
#variancia
var_tempo_preso = var(base_trabalho$tempo_preso)
#desvio padrao
dp_tempo_preso = sd(base_trabalho$tempo_preso)

#criando o grafico de dispersão entre as variaveis tempo_preso e score_periculosidade

plot(base_trabalho$tempo_preso, base_trabalho$score_periculosidade, main = "tempo preso x Periculosidade")

#calculandp a correlação entre as variaveis tempo_preso e score_periculosidade

cor_tempo_periculosidade = cor(x = base_trabalho$tempo_preso, y = base_trabalho$score_periculosidade)
cor_tempo_periculosidade
