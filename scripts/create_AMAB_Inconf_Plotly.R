library(ggplot2)
library(widgetframe)
library(plotly)
library(htmlwidgets)
AMAB_Inconf_Plot <- ggplot(AMAB_Inconf_Sum, aes(x=reorder(row.names(AMAB_Inconf_Sum), -Pct.of.Cases), y=Pct.of.Cases, text = paste (rownames(AMAB_Inconf_Sum), ":", Freq, "personnes", "(",Pct.of.Cases*100, "%)"))) + 
  scale_y_continuous(name = "Personnes NB AMAB souhaitant éviter cet effet (%)", labels = scales::percent_format(accuracy = 1L), breaks = seq(0,1, by = 0.1) ) +
  xlab("Effets indésirables") +
  geom_bar(stat = "identity", aes(fill= row.names(AMAB_Inconf_Sum))) +
  theme(axis.text.x = element_blank(), legend.title = element_blank())

AMAB_Inconf_Plotly <- ggplotly(AMAB_Inconf_Plot, tooltip = "text") %>%
  layout(showlegend = FALSE)

withr::with_dir('./Output/', saveWidget(frameableWidget(AMAB_Inconf_Plotly), "amab-inconf.html"))
