library(tidyverse)
library(dplyr)

Survey_Data_AFAB <- Survey_Data %>%
  filter(Assignation == "AFAB (assigné·e femme à la naissance)") %>%
  select(Confort_AFAB, Inconfort_AFAB)

Survey_Data_AFAB <- mutate(Survey_Data_AFAB, Facial_Hair_Conf = ifelse(grepl("faciale", Survey_Data_AFAB$Confort_AFAB), 1, 0), Body_Hair_Conf = ifelse(grepl("corps", Survey_Data_AFAB$Confort_AFAB), 1, 0), Dickclit_Conf = ifelse(grepl("dickclit", Survey_Data_AFAB$Confort_AFAB), 1, 0), Menses_Conf = ifelse(grepl("règles", Survey_Data_AFAB$Confort_AFAB), 1, 0), Voice_Conf = ifelse(grepl("voix", Survey_Data_AFAB$Confort_AFAB), 1, 0), Body_Fat_Conf = ifelse(grepl("graisses", Survey_Data_AFAB$Confort_AFAB), 1, 0), Muscle_Conf = ifelse(grepl("musculaire", Survey_Data_AFAB$Confort_AFAB), 1, 0), Alopecia_Conf = ifelse(grepl("cheveux", Survey_Data_AFAB$Confort_AFAB), 1, 0),Facial_Hair_Inconf = ifelse(grepl("faciale", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Body_Hair_Inconf = ifelse(grepl("corps", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Dickclit_Inconf = ifelse(grepl("dickclit", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Menses_Inconf = ifelse(grepl("règles", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Voice_Inconf = ifelse(grepl("plus grave", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Voice_Too_Deep = ifelse(grepl("trop grave", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Body_Fat_Inconf = ifelse(grepl("graisses", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Muscle_Inconf = ifelse(grepl("musculaire", Survey_Data_AFAB$Inconfort_AFAB), 1, 0), Alopecia_Inconf = ifelse(grepl("cheveux", Survey_Data_AFAB$Inconfort_AFAB), 1, 0)) %>% 
  select(-Confort_AFAB, -Inconfort_AFAB)


Survey_Data_AFAB <- Survey_Data_AFAB %>%
  mutate(Conf_Sum = rowSums(Survey_Data_AFAB[1:8]), Inconf_Sum = rowSums(Survey_Data_AFAB[9:17]))
