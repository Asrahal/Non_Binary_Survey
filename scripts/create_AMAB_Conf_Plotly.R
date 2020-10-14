library(ggplot2)
library(widgetframe)
library(plotly)
library(htmlwidgets)
AMAB_Conf_Plot <- ggplot(AMAB_Conf_Sum, aes(x=reorder(row.names(AMAB_Conf_Sum), -Pct.of.Cases), y=Pct.of.Cases, text = paste (rownames(AMAB_Conf_Sum), ":", Freq, "personnes", "(",Pct.of.Cases*100, "%)"))) + 
  scale_y_continuous(name = "Personnes NB AMAB attendant cet effet (%)", labels = scales::percent_format(accuracy = 1L), breaks = seq(0,1, by = 0.1) ) +
  xlab("Effets attendus") +
  geom_bar(stat = "identity", aes(fill= row.names(AFAB_Conf_Sum))) +
  theme(axis.text.x = element_blank(), legend.title = element_blank(), legend.position = "bottom")
AMAB_Conf_Plotly <- ggplotly(AMAB_Conf_Plot, tooltip = "text") %>%
  layout(showlegend = FALSE)

withr::with_dir('./Output/', saveWidget(frameableWidget(AMAB_Conf_Plotly), "amab-conf.html"))
