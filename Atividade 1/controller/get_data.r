library(qualR)

cetesb_aqs # Paulínia - Sta. Terezinha = 117

login_data <- read.delim(paste(getwd(),
                               "login.txt",
                               sep = "/"),
                         header = TRUE,
                         sep = ",")

my_user_name <- login_data$user_name # Salvo em arquivo externo
my_password <- login_data$password   # Salvo em arquivo externo

pin_code <- 117             # Paulínia - Sta. Terezinha
start_date <- "01/01/2019"  # 2019 - início
end_date <- "31/12/2019"    # 2019 - fim

data_path <- paste(getwd(),
                   "Atividade 1",
                   "model",
                   sep = "/")

cetesb_retrieve_pol(my_user_name,
                    my_password,
                    pin_code,
                    start_date,
                    end_date,
                    to_csv = TRUE,
                    csv_path = data_path)
