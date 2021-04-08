library(tidyverse)
read_csv('df_20.csv') -> df_20
head(df_20)
Europe_df <- df_20 %>%
filter(continent == 'Europe')%>%
select('Logged GDP per capita','Social support','Healthy life expectancy','Freedom to make life choices','Generosity','Perceptions of corruption')
Europe_df
library(vcd)
library(ggplot)
#We are going to see the correlation map between each continent
library(knitr)
cor_europe <- round(cor(Europe_df), 2)
head(cor_europe)
data.frame(cor_europe)
data.frame(cor_europe)%>%
rownames_to_column(var = "measure1")%>%
pivot_longer(cols = !measure1 ,names_to = "measure2",values_to = "cor_value") -> cor_table
cor_table%>%
ggplot(aes(x = measure1, y = measure2, fill = cor_value)) +
geom_tile()
#Template for map graph
library(RColorBrewer)
library(rworldmap)
df_20 %>%
  select('Country', "Happiness score") -> df_map
worldmap <- joinCountryData2Map(df_map, nameJoinColumn = "Country", joinCode= "NAME")
mapCountryData(worldmap, nameColumnToPlot = "Happiness score")

