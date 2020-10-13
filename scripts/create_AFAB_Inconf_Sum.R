AFAB_Inconf_Sum <- data.frame(Freq = colSums(Survey_Data_AFAB[9:17]),
                              Pct.of.Cases = round((colSums(Survey_Data_AFAB[9:17])/nrow(Survey_Data_AFAB[9:17])), digits = 2
                              ))
row.names(AFAB_Inconf_Sum) <- c("Pilosité faciale accrue", "Pilosité corporelle accrue", "Majoration de la taille du dickclit", "Arrêt des règles", "Aggravation de la voix", "Voix trop grave", "Répartition masculine des graisses", "Majoration de la musculature", "Alopécie androgénique")