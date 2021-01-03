library(dplyr)
AMAB_euphorie <- list()
AMAB_dysphorie <- list()
AMAB_neutre <- list()
for(i in 1:8)
{
  AMAB_euphorie[[i]] <- nrow(filter(AMAB_Combined, AMAB_Combined[i] == 3))
  AMAB_dysphorie[[i]] <- nrow(filter(AMAB_Combined, AMAB_Combined[i] == 1))
  AMAB_neutre[[i]] <- nrow(filter(AMAB_Combined, AMAB_Combined[i] == 2))
}


AMAB_Comb_Sum <- data.frame(Freq.Dysphorie = unlist(AMAB_dysphorie), 
                            Freq.Neutre = unlist(AMAB_neutre), 
                            Freq.Euphorie = unlist(AMAB_euphorie)) %>%
  dplyr::mutate(Pct.Dysphorie = round((Freq.Dysphorie/nrow(AMAB_Combined)), 
                                      digits = 2),
                Pct.Neutre = round((Freq.Neutre/nrow(AMAB_Combined)), 
                                   digits = 2),
                Pct.Euphorie = round((Freq.Euphorie/nrow(AMAB_Combined)), 
                                     digits = 2)
  )

AMAB_Comb_Sum$Effet <- c("Augmentation de la taille des seins", 
                              "Peau plus souple et moins grasse", 
                              "Diminution des érections", 
                              "Diminution du volume testiculaire", 
                              "Répartition féminine des graisses", 
                              "Diminution de la pilosité faciale", 
                              "Diminution de la pilosité corporelle", 
                              "Diminution de la masse musculaire")

AMAB_Comb_Sum <- AMAB_Comb_Sum %>%
  relocate(Effet, .before = Freq.Dysphorie)
