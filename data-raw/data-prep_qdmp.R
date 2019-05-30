## basesSGTI
# Organiza bases de dados do SGTI

#Load packages
library(purrr); library(dplyr); library(readxl)


#carrega arquivo
qdmp <- read.csv2("../bases-SGTI/QDMP_2019_01.csv")


#renomeia colunas
colnames(qdmp) <- c("servico",
                  "ponto_inicial",
                  "nome_ponto_inicial",
                  "ponto_final",
                  "nome_ponto_final",
                  "quant_ida",
                  "quant_volta"
                  )


qdmp$cod_municipio_inicio <- substr(x = qdmp$`ponto_inicial`, start = 1, stop = 7)

qdmp$cod_municipio_fim <- substr(x = qdmp$`ponto_final`, start = 1, stop = 7)

#Adiciona o arquivo de data ao projeto

usethis::use_data(qdmp, overwrite =TRUE)


