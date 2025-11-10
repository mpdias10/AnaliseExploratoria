# AnaliseExploratoria
Primeira atividade no GitHub: AnaliseExploratoria

## Analisando os Resultados dos Gráficos
A visualização dos dados, etapa crucial para entender as principais tendências e relações, permitiu identificar os seguintes insights:

### 1. Histograma da idade

* A distribuição da idade não segue um padrão normal simples.
* Observa-se uma concentração de detentos nas faixas etárias entre 30 a 40, e 50 a 60.

### 2. Boxplot do Tempo Preso

* A **mediana** do tempo de prisão se encontra em aproximadamente na faixa de 60 meses preso.
* Foi encontrado um outlier na variavel tempo preso.

### 3. Boxplot Score de Periculosidade

## Análise Exploratória: Score de Periculosidade por Escolaridade

# 3.1 Medidas de Tendência Central (Mediana)

* Os grupos com escolaridade **Fundamental** (aprox. 180) e **Médio** (aprox. 180) exibem medianas muito **similares** e elevadas.
* O grupo com escolaridade **Superior** apresenta a **mediana mais baixa** (aprox. 165), sugerindo que 50% dos indivíduos com formação superior possuem um Score de Periculosidade inferior a esse valor, em contraste com os outros grupos.

# 3.2 Dispersão e Variabilidade (Intervalo Interquartil - IIQ)

* O grupo **Fundamental** demonstra a **menor variabilidade** aparente, com escores 50% centrais concentrados entre ~160 e ~190.
* O grupo **Médio** exibe a **maior variabilidade**, com os 50% centrais dispersos entre ~155 e ~190.
* O grupo **Superior** tem uma variabilidade intermediária, concentrando-se entre ~150 e ~185.

# 3.3 Valores Extremos (Amplitude e Outliers)

A análise dos bigodes e outliers revela:

* O grupo **Médio** é o que apresenta a **maior amplitude total** e a presença de **dois valores discrepantes (outliers)**, indicando que, embora a mediana seja alta, este grupo possui indivíduos com scores de periculosidade atipicamente altos e atipicamente baixos.
* Os grupos **Fundamental** e **Superior** não apresentaram outliers.

### 4. Boxplot Frequência de Detentos por Sexo

#4.1 Frequência Visualizada

A análise direta da barra **Feminino**:

**Contagem:** A barra alcança o valor de **60** no eixo vertical ("Número de Detentos")

#4.2 Limitação e Necessidade de Dados Adicionais

Devido à apresentação incompleta do gráfico, **não é possível** concluir a análise completa da distribuição de detentos por sexo:

* **Identificação do Grupo:** Não há rótulos visíveis no eixo X para determinar se a barra de 60 detentos corresponde ao sexo **Feminino** ou **Masculino**.
* **Frequência Total:** É impossível determinar a frequência do sexo oposto (a barra ausente) e, consequentemente, o **número total de detentos** na amostra.

# 🚀 Título do Projeto: Análise de Detentos e Periculosidade

**Breve descrição concisa do que é o projeto e o que ele faz. (Ex: "Análise da relação entre tempo de prisão, escolaridade e escore de periculosidade de uma amostra de detentos.")**


### Definições de Medidas Estatísticas

Supondo um conjunto de observações $x_1, x_2, \dots, x_n$, estas são as definições das medidas de tendência central e de dispersão utilizadas na análise:

### Medidas de Tendência Central

| Medida | Definição |
| :--- | :--- |
| **Média ($\bar{x}$)** | É o valor que representa o ponto de equilíbrio de um conjunto de dados. É calculada somando-se todos os valores e dividindo-se pelo número total de observações ($n$).<br><br>$$\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i$$ |
| **Mediana ($\tilde{x}$)** | É o valor central que divide o conjunto de dados ordenados em duas partes iguais (50% das observações são menores ou iguais, e 50% são maiores ou iguais a este valor). |

### Medidas de Dispersão

| Medida | Definição |
| :--- | :--- |
| **Variância ($s^2$)** | É a média dos quadrados das diferenças entre cada valor e a média do conjunto. Indica o quão dispersos os dados estão em relação à média.<br><br>$$s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2$$ |
| **Desvio Padrão ($s$)** | É a raiz quadrada da variância. Oferece uma medida de dispersão na mesma unidade de medida dos dados originais, tornando a interpretação mais fácil.<br><br>$$s = \sqrt{s^2}$$ |
| **Amplitude ($A$)** | É a diferença entre o maior e o menor valor do conjunto de dados. Representa a extensão total dos valores observados.<br><br>$$A = \text{Valor Máximo} - \text{Valor Mínimo}$$ |



