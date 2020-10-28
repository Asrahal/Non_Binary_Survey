library(ggplot2)
library(widgetframe)
library(plotly)
library(htmlwidgets)
AFAB_Conf_Plot <- ggplot(AFAB_Conf_Sum, 
                         aes(x=reorder(row.names(AFAB_Conf_Sum), -Pct.of.Cases), 
                             y=Pct.of.Cases,
                             text = paste (rownames(AFAB_Conf_Sum), ":", 
                                           Freq, "personnes", 
                                           "(",Pct.of.Cases*100, "%)"))) + 
  scale_y_continuous(name = "Personnes NB AFAB attendant cet effet (%)", 
                     labels = scales::percent_format(accuracy = 1L), 
                     breaks = seq(0,1, by = 0.1) ) +
  xlab("Effets attendus") +
  geom_bar(stat = "identity", 
           aes(fill= row.names(AFAB_Conf_Sum))) +
  theme(axis.text.x = element_blank(), 
        legend.title = element_blank(), 
        legend.position = "bottom")

AFAB_Conf_Plotly <- ggplotly(AFAB_Conf_Plot, tooltip = "text") %>%
  layout(showlegend = FALSE)

withr::with_dir('./Output/', saveWidget(frameableWidget(AFAB_Conf_Plotly), "afab-conf.html"))
