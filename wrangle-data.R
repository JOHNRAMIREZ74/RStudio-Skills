library(tidyverse)

# Lee el archivo CSV
murders <- read.csv("data/murders.csv")

# Usa pipe (%>%) para encadenar las funciones mutate y save
murders <- murders %>% 
  mutate(region = factor(region), rate = total / population * 10^5)

# Guarda el objeto 'murders' en un archivo .rda
save(murders, file = "rda/murders.rda")
mutate()