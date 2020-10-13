library(ggplot2)
library(widgetframe)
library(plotly)
library(htmlwidgets)
AFAB_Inconf_Plot <- ggplot(AFAB_Inconf_Sum, aes(x=reorder(row.names(AFAB_Inconf_Sum), -Pct.of.Cases), y=Pct.of.Cases, text = paste (rownames(AFAB_Inconf_Sum), ":", Freq, "personnes", "(",Pct.of.Cases*100, "%)"))) + 
  scale_y_continuous(name = "Personnes NB AFAB souhaitant éviter cet effet (%)", labels = scales::percent_format(accuracy = 1L), breaks = seq(0,1, by = 0.1) ) +
  xlab("Effets indésirables") +
  geom_bar(stat = "identity", aes(fill= row.names(AFAB_Inconf_Sum))) +
  theme(axis.text.x = element_blank(), legend.title = element_blank())

AFAB_Inconf_Plotly <- ggplotly(AFAB_Inconf_Plot, tooltip = "text") %>%
  layout(legend = list(x=1, y = 1))

withr::with_dir('./Output/', saveWidget(frameableWidget(AFAB_Inconf_Plotly), "afab-inconf.html"))
