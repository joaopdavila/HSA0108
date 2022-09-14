library(openair)

data_path <- paste(getwd(),
                   "Atividade 1",
                   "model",
                   "Paulinia_POL_01-01-2019_31-12-2019.csv",
                   sep = "/")

air_data <- read.csv(data_path,
                     header = TRUE)

mydata$date <- as.POSIXct(strptime(mydata$date,
                                   format = "%Y-%m-%d %H:%M",
                                   tz = "GMT"))

summaryPlot(air_data)

timePlot(air_data,
         pollutant = c("o3",
                       "no",
                       "no2",
                       "nox",
                       "pm10"),
         y.relation = "free")

timeVariation(air_data,
              pollutant = c("o3"))

timeVariation(air_data,
              pollutant = c("no"))

timeVariation(air_data,
              pollutant = c("no2"))

timeVariation(air_data,
              pollutant = c("nox"))

timeVariation(air_data,
              pollutant = c("pm10"))

timeVariation(air_data,
              pollutant = c("o3",
                            "no",
                            "no2"))
