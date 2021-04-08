library(tidyverse)
df_2016 <- read_csv("2016.csv")
df_2017 <- read_csv("2017.csv")
df_2018 <- read_csv("2018.csv")
df_2019 <- read_csv("2019.csv")
library(countrycode)
#add 'continent' as a new factor to our dataframe
continent_2016 <- countrycode(df_2016$Country, 'country.name', 'continent')
continent_2017 <- countrycode(df_2017$Country, 'country.name', 'continent')
continent_2018 <- countrycode(df_2018$Country, 'country.name', 'continent')
continent_2019 <- countrycode(df_2019$Country, 'country.name', 'continent')
#Select the six factors along with coresponding country name and their happiness score.
#..Also add the a new column to the dataframe called 'continent'.
df_2016%>%
dplyr::select('Country','Happiness score','GDP per capita','Social support','Healthy life expectancy','Freedom to make life choices','Generosity','Perceptions of corruption')%>%
mutate(contient = continent_2016) -> df_16

#..Do the same for 2017 to 2020 dataframe
#..2017
df_2017%>%
dplyr::select('Country','Happiness score','GDP per capita','Social support','Healthy life expectancy','Freedom to make life choices','Generosity','Perceptions of corruption')%>%
mutate(continent = continent_2017) -> df_17
#..2018
df_2018%>%
dplyr::select('Country','Happiness score','GDP per capita','Social support','Healthy life expectancy','Freedom to make life choices','Generosity','Perceptions of corruption')%>%
mutate(continent = continent_2018) -> df_18
#..2019
df_2019%>%
dplyr::select('Country','Happiness score','GDP per capita','Social support','Healthy life expectancy','Freedom to make life choices','Generosity','Perceptions of corruption')%>%
mutate(continent = continent_2019) -> df_19


#Let's do the same assignment to the rest dataframe
Na_position_19 <- which(is.na(df_19$continent), arr.ind = FALSE, useNames = TRUE)
df_19$Country[Na_position_19] -> Na_country_name_19
df_19$continent[Na_position_19] <- 'Europe'

Na_position_18 <- which(is.na(df_18$continent), arr.ind = FALSE, useNames = TRUE)
df_18$Country[Na_position_18] -> Na_country_name_18
df_18$continent[Na_position_18] <- 'Europe'

Na_position_17 <- which(is.na(df_17$continent), arr.ind = FALSE, useNames = TRUE)
df_17$Country[Na_position_17] -> Na_country_name_17
df_17$continent[Na_position_17] <- 'Europe'
#Save the processed data
write.csv(df_16, 'df_16.csv')
write.csv(df_17, 'df_17.csv')
write.csv(df_18, 'df_18.csv')
write.csv(df_19, 'df_19.csv')

