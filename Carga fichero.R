load("C:/Users/asaaa/Desktop/EXAMEN_DS1/Archivos_examen_ds/muestra39.RData")
dim(muestra39)
View(muestra39)
names(muestra39)
names(muestra39)<-c('nif','nombre','g�nero')
View(muestra39)
library(stringi)
library(stringr)
library(rebus)
library(dplyr)

#como no sab�a hacer lo del genero he cambiado a rama-nif y he empezado el procesamiento del nif

#Examino el patron que sigur cada nif(es decir, 8 numeros y una letra)
coincidencia = "([[:digit:]]{8})([[:alpha:]]{1})"

#cojo las que coinciden
df1=str_extract(muestra39$nif, coincidencia)

#Lo a�ado a dataframe
df1=data.frame(df1)

#Uno la tabla a del patron a la muestra original
muestra39=inner_join(df1, muestra39, by = c("df1" = "nif"))
View(muestra39)
