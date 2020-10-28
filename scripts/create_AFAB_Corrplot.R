library(psych)
library(corrplot)

AFAB_Combined2 <- AFAB_Combined
colnames(AFAB_Combined2) <- c("Pilosité faciale", "Pilosité corporelle", "Dickclit", "Règles", "Voix", "Graisses", "Muscle", "Alopécie")
AFAB_Kendall <- corr.test(AFAB_Combined2[1:7], 
                          method = "kendall", 
                          use = "pairwise")
corrplot(AFAB_Kendall$r,
         method = "color",
         type="upper", 
         order="hclust", 
         tl.col="black", 
         tl.srt=45,
         p.mat = AFAB_Kendall_combined$p,
         insig = "blank"
)




