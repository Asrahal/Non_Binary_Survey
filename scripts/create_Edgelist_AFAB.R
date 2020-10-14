Survey_Data_AFAB_Edge <- Survey_Data_AFAB %>%
  mutate(Facial_Hair_Conf = replace(Survey_Data_AFAB$Facial_Hair_Conf, Survey_Data_AFAB$Facial_Hair_Conf == 1, "Pilosité faciale accrue (attendu)"), 
         Body_Hair_Conf = replace(Survey_Data_AFAB$Body_Hair_Conf, Survey_Data_AFAB$Body_Hair_Conf == 1, "Pilosité corporelle accrue (attendu)"), 
         Dickclit_Conf = replace(Survey_Data_AFAB$Dickclit_Conf, Survey_Data_AFAB$Dickclit_Conf == 1, "Majoration de la taille du dickclit (attendu)"),
         Menses_Conf = replace(Survey_Data_AFAB$Menses_Conf, Survey_Data_AFAB$Menses_Conf == 1, "Arrêt des règles (attendu)"),
         Voice_Conf = replace(Survey_Data_AFAB$Voice_Conf, Survey_Data_AFAB$Voice_Conf == 1, "Aggravation de la voix (attendu)"),
         Body_Fat_Conf = replace(Survey_Data_AFAB$Body_Fat_Conf, Survey_Data_AFAB$Body_Fat_Conf == 1, "Répartition masculine des graisses (attendu)"),
         Muscle_Conf = replace(Survey_Data_AFAB$Muscle_Conf, Survey_Data_AFAB$Muscle_Conf == 1, "Majoration de la musculature (attendu)"),
         Alopecia_Conf = replace(Survey_Data_AFAB$Alopecia_Conf, Survey_Data_AFAB$Alopecia_Conf == 1, "Alopécie androgénique (attendu)"),
         Facial_Hair_Inconf = replace(Survey_Data_AFAB$Facial_Hair_Inconf, Survey_Data_AFAB$Facial_Hair_Inconf == 1, "Pilosité faciale accrue (indésirable)"), 
         Body_Hair_Inconf = replace(Survey_Data_AFAB$Body_Hair_Inconf, Survey_Data_AFAB$Body_Hair_Inconf == 1, "Pilosité corporelle accrue (indésirable)"), 
         Dickclit_Inconf = replace(Survey_Data_AFAB$Dickclit_Inconf, Survey_Data_AFAB$Dickclit_Inconf == 1, "Majoration de la taille du dickclit (indésirable)"),
         Menses_Inconf = replace(Survey_Data_AFAB$Menses_Inconf, Survey_Data_AFAB$Menses_Inconf == 1, "Arrêt des règles (indésirable)"),
         Voice_Inconf = replace(Survey_Data_AFAB$Voice_Inconf, Survey_Data_AFAB$Voice_Inconf == 1, "Aggravation de la voix (indésirable)"),
         Voice_Too_Deep = replace(Survey_Data_AFAB$Voice_Too_Deep, Survey_Data_AFAB$Voice_Too_Deep == 1, "Voix trop grave (indésirable)"),
         Body_Fat_Inconf = replace(Survey_Data_AFAB$Body_Fat_Inconf, Survey_Data_AFAB$Body_Fat_Inconf == 1, "Répartition masculine des graisses (indésirable)"),
         Muscle_Inconf = replace(Survey_Data_AFAB$Muscle_Inconf, Survey_Data_AFAB$Muscle_Inconf == 1, "Majoration de la musculature (indésirable)"),
         Alopecia_Inconf = replace(Survey_Data_AFAB$Alopecia_Inconf, Survey_Data_AFAB$Alopecia_Inconf == 1, "Alopécie androgénique (indésirable)")
  )
Survey_Data_AFAB_Edge[Survey_Data_AFAB_Edge == 0] <- NA
idxB <- t(combn(seq_along(Survey_Data_AFAB_Edge), 2))
edgelist_AFAB <- lapply(1:nrow(idxB), function(i) Survey_Data_AFAB_Edge[, c(idxB[i, 1], idxB[i, 2])])
edgelist_AFAB  <- lapply(edgelist_AFAB , setNames, c("ID1","ID2"))
edgelist_AFAB  <- do.call(rbind, edgelist_AFAB)
edgelist_AFAB  <- edgelist_AFAB[rowSums(is.na(edgelist_AFAB))==0, ]
