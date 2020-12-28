library(reactable)
library(htmltools)
library(paletteer)

make_color_pal <- function(colors, bias = 1) {
  get_color <- colorRamp(colors, bias = bias)
  function(x) rgb(get_color(x), maxColorValue = 255)
}

dys_color <- make_color_pal(c("#F7C6CA", "#ED7B84", "#D42C3A", "#D13D49"), bias = 2)
seq(0.1, 0.9, length.out = 12)
dys_color(seq(0.1, 0.9, length.out = 12))

neut_color <- make_color_pal(c("#FCF4D2", "#FADF75", "#D9BA30"), bias = 2)
seq(0.1, 0.9, length.out = 12)
neut_color(seq(0.1, 0.9, length.out = 12))

eup_color <- make_color_pal(c("#B3E3D5", "#71E3C1", "#15b383"), bias = 2)
seq(0.1, 0.9, length.out = 12)
eup_color(seq(0.1, 0.9, length.out = 12))


AFAB_Table <- reactable(AFAB_Comb_Sum[1:3],
                        columns = list(
                          Freq.Dysphorie = colDef(name = "Indésirable",
                                                  cell = function(value) {
                                                    paste0(value, " (", format(value * 100 / nrow(AFAB_Combined), digits = 1), "%)")
                                                   
                                                    },
                                                  style = function(value) {
                                                    value
                                                    normalized <- (value - min(AFAB_Comb_Sum$Freq.Dysphorie)) / (max(AFAB_Comb_Sum$Freq.Dysphorie) - min(AFAB_Comb_Sum$Freq.Dysphorie))
                                                    color <- dys_color(normalized)
                                                    list(background = color)
                                                  },
                                                  align = "left"),
                          Freq.Neutre = colDef(name = "Neutre",
                                               cell = function(value) {
                                                 paste0(value, " (", format(value * 100 / nrow(AFAB_Combined), digits = 1), "%)")
                                               },
                                               style = function(value) {
                                                 value
                                                 normalized <- (value - min(AFAB_Comb_Sum$Freq.Neutre)) / (max(AFAB_Comb_Sum$Freq.Neutre) - min(AFAB_Comb_Sum$Freq.Neutre))
                                                 color <- neut_color(normalized)
                                                 list(background = color)
                                               },
                                               align = "left"),
                          Freq.Euphorie = colDef(name = "Désirable",
                                                 cell = function(value) {
                                                  paste0(value, " (", format(value * 100 / nrow(AFAB_Combined), digits = 1), "%)")
                                                 },
                                                 style = function(value) {
                                                   value
                                                   normalized <- (value - min(AFAB_Comb_Sum$Freq.Euphorie)) / (max(AFAB_Comb_Sum$Freq.Euphorie) - min(AFAB_Comb_Sum$Freq.Euphorie))
                                                   color <- eup_color(normalized)
                                                   list(background = color)
                                                 },
                                                 align = "left")),
                        
                        highlight = TRUE
                        )







