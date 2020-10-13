AFAB_Conf_Sum <- data.frame(Freq = colSums(Survey_Data_AFAB[1:8]),
                            Pct.of.Cases = round((colSums(Survey_Data_AFAB[1:8])/nrow(Survey_Data_AFAB[1:8])), digits = 2
                            ))
row.names(AFAB_Conf_Sum) <- c("Pilosité faciale accrue", "Pilosité corporelle accrue", "Majoration de la taille du dickclit", "Arrêt des règles", "Aggravation de la voix", "Répartition masculine des graisses", "Majoration de la musculature", "Alopécie androgénique")
