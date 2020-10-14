AMAB_Inconf_Sum <- data.frame(Freq = colSums(Survey_Data_AMAB[9:16]),
                            Pct.of.Cases = round((colSums(Survey_Data_AMAB[9:16])/nrow(Survey_Data_AMAB[9:16])), digits = 2
                            ))
row.names(AMAB_Inconf_Sum) <- c("Augmentation de la taille des seins", "Peau plus souple et moins grasse", "Diminution des érections", "Diminution du volume testiculaire", "Répartition féminine des graisses", "Diminution de la masse musculaire", "Diminution de la pilosité faciale", "Diminution de la pilosité corporelle")
