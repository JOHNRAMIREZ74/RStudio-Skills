library(tidyverse)

# Cargar el archivo .rda
load("rda/murders.rda")

# Crear un gráfico de barras horizontales
murders %>%
  mutate(abb = reorder(abb, rate)) %>%    # Reordenar las etiquetas del eje y según la tasa de asesinatos
  ggplot(aes(abb, rate)) +                 # Especificar los datos y variables estéticas para el gráfico
  geom_bar(width = 0.4, stat = "identity", color = "black") +  # Agregar barras con anchura 0.4
  coord_flip()                             # Girar el gráfico para que las barras sean horizontales
ggsave("figs/barplot.png")
