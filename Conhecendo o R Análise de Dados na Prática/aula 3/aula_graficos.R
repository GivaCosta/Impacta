# Instalando pacote car #
install.packages("car")

# Carregando pacote car e dplyir #
library(car)
library(dplyr)

#attach(mtcars)
# Carregando o dataset contendo marcas de carros e salvando em um dataframe #
carros <- mtcars

# Gr�fico de dispers�o do dataset #
plot(carros$wt, carros$mpg, main="Gr�fico de Dispers�o",
     xlab="Peso do carro", ylab="Milhas por gal�o", pch=19) 

# Adicionando uma linha de regress�o ao gr�fico #
abline(lm(carros$mpg ~ carros$wt), col = "red")

# Salvando o gr�fico em png #
#png("grafico_mtcars1.png")

# Gr�fico de barras verticais #
numero_carros <- table(carros$gear)
barplot(main = "Gr�fico de Barras Verticais", 
        xlab= "Engrenagens",
        ylab = "Quantidade de carros",
        numero_carros, col = "blue")

# Gr�fico de barras horizontais #
numero_carros <- table(carros$gear)
barplot(main="Gr�fico de Barras Horizontais", 
        horiz=TRUE,
        numero_carros,
        names.arg=c("3 engrenagens", "4 engrenagens", "5 engrenagens"),
        xlab = "Quantidade de carros",
        ylab = "Engrenagens",
        col="blue")

# Quantidade de alunos em cada curso de faculdade #
exemplo <- data.frame("nome" = c("Joana", "Maria", "Joao", "Pedro", "Jose"), 
                      "idade" = c(21, 25, 28, 34, 18), 
                      "qtd_livros" = c(5, 1, 2, 1, 3),
                      "faculdade" = c("Engenharia", "Engenharia", "Direito", "Enfermagem", "Engenharia"), 
                      stringsAsFactors = FALSE)

# Quantidade de alunos em cada curso de faculdade #
engenharia <- exemplo %>%
                      filter(faculdade == "Engenharia")
numero_alunos_eng <- length(engenharia$nome)

enfermagem <- exemplo %>%
                      filter(faculdade == "Enfermagem")
numero_alunos_enf <- length(enfermagem$nome)

direito <- exemplo %>%
                      filter(faculdade == "Direito")
numero_alunos_direito <- length(direito$nome)

# Gr�fico de Pizza Simples #
slices <- c(numero_alunos_eng, numero_alunos_enf, numero_alunos_direito)
rotulos <- c("Engenharia", "Enfermagem", "Direito")
pie(slices, 
    labels = rotulos, 
    main="Alunos por curso")

# Gr�fico de Pizza com porcentagem #
porcentagem <- round(slices/sum(slices)*100)
rotulos <- paste(rotulos, porcentagem) # add percents to labels
rotulos <- paste(rotulos,"%",sep="") # ad % to labels
pie(slices,
    labels = rotulos, 
    col=rainbow(length(rotulos)),
    main="Quantidade de alunos por curso") 

# Gr�fico de Linha #
serie_temporal <- data.frame("ano" = c("2014", "2015", "2016", "2017", "2018"), 
                      "media_temperatura" = c(25, 19, 35, 40, 20), 
                      stringsAsFactors = FALSE)

plot(y=serie_temporal$media_temperatura, 
     x= serie_temporal$ano, 
     type = "o", 
     col = "blue", 
     xlab = "M�s", 
     ylab = "Temperatura",
     main = "Gr�fico de Linha")

# Gr�fico boxplot #
boxplot(mpg~cyl,
        data=carros, 
        main="Gr�fico Boxplot",
        xlab="N�mero de cilindros", 
        ylab="Milhas por gal�o",
        col="blue") 
