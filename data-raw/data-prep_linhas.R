## basesSGTI
# Organiza bases de dados "linhas" do SGTI

#Load packages
library(purrr); library(dplyr); library(readxl)


#carrega arquivo
linhas <- read_excel("../bases-SGTI/linhas.xlsx")

linhas <- linhas[ , -12] #exclui coluna 12 "Data de Validade"

#renomeia colunas
colnames(linhas) <- c("numero_linha",
                  "nome_linha",
                  "situacao",
                  "cod_deleg",
                  "nome_deleg",
                  "cod_tipo_utilizacao",
                  "nome_tipo_utilizacao",
                  "cod_tipo_contrato",
                  "nome_tipo_contrato",
                  "numero_contrato",
                  "vencimento_contrato",
                  "inicio_vigencia",
                  "n_veiculos",
                  "tarifa_min",
                  "obs")


#Adiciona o arquivo de data ao projeto

usethis::use_data(linhas, overwrite =TRUE)


