Survey_Data_AMAB <- Survey_Data %>%
  filter(Assignation == "AMAB (assigné·e homme à la naissance)") %>%
  select(Confort_AMAB, Inconfort_AMAB) 

Survey_Data_AMAB <- mutate(Survey_Data_AMAB, 
                           Breast_Conf = ifelse(grepl("seins", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Skin_Conf = ifelse(grepl("peau", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Erection_Conf = ifelse(grepl("érection", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Testes_Conf = ifelse(grepl("testicules", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Body_Fat_Conf = ifelse(grepl("graisses", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Facial_Hair_Conf = ifelse(grepl("faciale", Survey_Data_AMAB$Confort_AMAB), 1, 0), 
                           Body_Hair_Conf = ifelse(grepl("corporelle", Survey_Data_AMAB$Confort_AMAB), 1, 0),
                           Muscle_Conf = ifelse(grepl("musculaire", Survey_Data_AMAB$Confort_AMAB), 1, 0),
                           Breast_Inconf = ifelse(grepl("seins", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Skin_Inconf = ifelse(grepl("peau", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Erection_Inconf = ifelse(grepl("érection", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Testes_Inconf = ifelse(grepl("testicules", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Body_Fat_Inconf = ifelse(grepl("graisses", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Facial_Hair_Inconf = ifelse(grepl("faciale", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Body_Hair_Inconf = ifelse(grepl("corporelle", Survey_Data_AMAB$Inconfort_AMAB), 1, 0), 
                           Muscle_Inconf = ifelse(grepl("musculaire", Survey_Data_AMAB$Inconfort_AMAB), 1, 0)) %>%
  select(-Confort_AMAB, -Inconfort_AMAB)

Survey_Data_AMAB <- Survey_Data_AMAB %>%
  mutate(Conf_Sum = rowSums(Survey_Data_AMAB[1:8]), 
         Inconf_Sum = rowSums(Survey_Data_AMAB[9:16]))
