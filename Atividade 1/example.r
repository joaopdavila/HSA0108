rm(list=ls()) #esse comando limpa o environment
setwd("~\\FSP\\Disciplinas\\2022\\ControlePolAr-POLI") #Definir diretório de trabalho


library(qualR)

# Ver todas as estações da Cetesb com seus códigos e lat e lon
cetesb_aqs

# Ver os códidos de cada parâmetro monitorado pela CETESB
cetesb_param


my_user_name <- "john.doe@mymail.com"
my_password <- "drowssap"

pin_code <- 99
start_date <- "01/01/2020"
end_date <- "31/03/2020"

pin_pol <- cetesb_retrieve_pol(my_user_name,
                               my_password,
                               pin_code, # It could also be "Pinheiros"
                               start_date,
                               end_date,
                               to_csv = TRUE)



#Importar planilha para trabalhar no openair

library(openair) # carregar o pacote

mydata <- read.csv("Pinheiros_POL_01-01-2020_31-03-2020.csv", header = TRUE)

# Importante para definir a coluna date como formato de data/hora
mydata$date <- as.POSIXct(strptime(mydata$date, format = "%Y-%m-%d %H:%M", tz = "GMT"))


summaryPlot(mydata)

timePlot(mydata, pollutant = c("nox", "o3"), y.relation = "free") ## Aqui é necessario inserir todos os poluentes que se deseja colocar no grafico

timeVariation(mydata, pollutant = c("o3"))

timeVariation(mydata, pollutant = c("o3","no","no2"))
