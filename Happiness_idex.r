library(tidyverse)
df_2015 <- read_csv("2015.csv")
df_2016 <- read_csv("2016.csv")
df_2017 <- read_csv("2017.csv")
df_2018 <- read_csv("2018.csv")
df_2019 <- read_csv("2019.csv")
df_2015%>%
select("Country", "Region", "Happiness Rank", "Happiness Score", "Economy (GDP per Capita)", "Family", "Health (Life Expectancy)", "Freedom", "Trust (Government Corruption)", "Generosity") -> df_1
df_2016%>%
select("Country", "Happiness Rank", "Happiness Score", "Economy (GDP per Capita)", "Family", "Health (Life Expectancy)", "Freedom", "Trust (Government Corruption)", "Generosity") -> df_2
df_2017%>%
select("Country", "Happiness.Rank", "Happiness.Score", "Economy..GDP.per.Capita.", "Family", "Health (Life Expectancy)", "Freedom", "Trust..Government.Corruption.", "Generosity") -> df_3
df_2018%>%
select("Country or region", "Overall rank", "Score", "GDP per capita", "Social support", "Healthy life expectancy", "Freedom to make life choices", "Perceptions of corruption", "Generosity") -> df_4
df_2019%>%
select("Country or region", "Overall rank", "Score", "GDP per capita", "Social support", "Healthy life expectancy", "Freedom to make life choices", "Perceptions of corruption", "Generosity") -> df_5
df_1