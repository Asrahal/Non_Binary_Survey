library(psych)
library(corrplot)

AFAB_Combined2 <- AFAB_Combined
colnames(AFAB_Combined2) <- c("Pilosité faciale", "Pilosité corporelle", "Dickclit", "Règles", "Voix", "Graisses", "Muscle", "Alopécie")
AFAB_Kendall <- corr.test(AFAB_Combined2[1:7], 
                          method = "kendall", 
                          use = "pairwise")

png(height=900, width=900, file="./plots/AFAB_Corrplot.png", type = "cairo")
corrplot(AFAB_Kendall$r,
         method = "color",
         type="upper", 
         order="hclust", 
         tl.col="black", 
         tl.srt=45,
         p.mat = AFAB_Kendall$p,
         insig = "blank"
)
dev.off()



