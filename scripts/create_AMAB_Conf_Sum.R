AMAB_Conf_Sum <- data.frame(Freq = colSums(Survey_Data_AMAB[1:8]),
                            Pct.of.Cases = round((colSums(Survey_Data_AMAB[1:8])/nrow(Survey_Data_AMAB[1:8])), digits = 2
                            ))
row.names(AMAB_Conf_Sum) <- c("Augmentation de la taille des seins", "Peau plus souple et moins grasse", "Diminution des érections", "Diminution du volume testiculaire", "Répartition féminine des graisses", "Diminution de la pilosité faciale", "Diminution de la pilosité corporelle", "Diminution de la masse musculaire")
