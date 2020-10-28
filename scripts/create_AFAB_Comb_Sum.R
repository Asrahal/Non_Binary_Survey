library(dplyr)
AFAB_euphorie <- list()
AFAB_dysphorie <- list()
AFAB_neutre <- list()
for(i in 1:8)
{
  AFAB_euphorie[[i]] <- nrow(filter(AFAB_Combined, AFAB_Combined[i] == 3))
  AFAB_dysphorie[[i]] <- nrow(filter(AFAB_Combined, AFAB_Combined[i] == 1))
  AFAB_neutre[[i]] <- nrow(filter(AFAB_Combined, AFAB_Combined[i] == 2))
}


AFAB_Comb_Sum <- data.frame(Freq.Dysphorie = unlist(AFAB_dysphorie), 
                            Freq.Neutre = unlist(AFAB_neutre), 
                            Freq.Euphorie = unlist(AFAB_euphorie)) %>%
  dplyr::mutate(Pct.Dysphorie = round((Freq.Dysphorie/nrow(AFAB_Combined)), 
                                       digits = 2),
                Pct.Neutre = round((Freq.Neutre/nrow(AFAB_Combined)), 
                                      digits = 2),
                Pct.Euphorie = round((Freq.Euphorie/nrow(AFAB_Combined)), 
                                      digits = 2)
                )

row.names(AFAB_Comb_Sum) <- c("Pilosité faciale accrue", 
                              "Pilosité corporelle accrue", 
                              "Majoration de la taille du dickclit", 
                              "Arrêt des règles", 
                              "Aggravation de la voix", 
                              "Répartition masculine des graisses", 
                              "Majoration de la musculature", 
                              "Alopécie androgénique")
