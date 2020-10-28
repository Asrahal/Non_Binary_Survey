
library(readr)
library(tidyverse)
Survey_Data <- read_delim("data/Survey_Data.csv", 
                          ";", escape_double = FALSE, col_names = FALSE, 
                          col_types = cols(X1 = col_skip(), X7 = col_skip()), 
                          locale = locale(encoding = "WINDOWS-1252"), 
                          trim_ws = TRUE, skip = 1) %>%
  rename("Assignation" = "X2", 
         "Confort_AFAB" = "X3", 
         "Inconfort_AFAB" = "X4", 
         "Confort_AMAB" = "X5", 
         "Inconfort_AMAB" = "X6")