#Q1: Um commit no GitHub no caso é um ponto de salvamento do projeto em um determinado momento. Ele é a unidade estrutural do historico do projeto e registra um conjunto de alterações feitas em um ou mais arquivos.

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

#Fazendo a analise dos dados faltantes 
str(base_trabalho)

#Fazendo o Histograma da variavel idade
hist(base_trabalho$idade, main = "Histograma da idade",
     xlab = "idade (em anos)", ylab = "Frequência", col = "skyblue", border = "black")

#Fazendo o boxplot da variavel tempo_preso
boxplot(base_trabalho$tempo_preso, mais = "boxplot do Tempo Preso",
        ylab = "Tempo Preso", col = "lightgreen")

#Fazendo o boxplot da variavel score_periculosidade por escolaridade.
boxplot(score_periculosidade ~ escolaridade, data = base_trabalho,
        main = "Periculosidade por Escolaridade",
        xlab = "Escolaridade", ylab = "Score de Periculosidade",
        col = c("gold", "coral", "lightblue"))

#Fazendo um grafico de barras para a variavel sexo
barplot(table(base_trabalho$sexo),main =
          "Frequência de Detentos por sexo",
        ylab = "numero de Detentos", xlab = "Sexo",
        col = c("pink", "blue"))
