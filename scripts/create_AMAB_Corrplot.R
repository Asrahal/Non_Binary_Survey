library(psych)
library(corrplot)

AMAB_Combined2 <- AMAB_Combined
colnames(AMAB_Combined2) <- c("Seins", 
                              "Peau", 
                              "Erections", 
                              "Testicules", 
                              "Graisses", 
                              "Pilosité faciale", 
                              "Pilosité corporelle", 
                              "Muscle")

AMAB_Kendall <- corr.test(AMAB_Combined2, 
                          method = "kendall", 
                          use = "pairwise")
corrplot(AMAB_Kendall$r,
         method = "color",
         type="upper", 
         order="hclust", 
         tl.col="black", 
         tl.srt=45,
         p.mat = AMAB_Kendall$p,
         insig = "blank"
)




