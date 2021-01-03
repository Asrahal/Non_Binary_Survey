library(poLCA)
library(broom)
library(ggplot2)

AFAB_LCA_Formula <- cbind(Facial_Hair, 
                          Body_Hair, 
                          Dickclit, 
                          Fat, 
                          Muscle, 
                          Voice,
                          Menses,
                          Alopecia) ~ 1 


AFAB_LCA <- poLCA(AFAB_LCA_Formula, 
                  data = AFAB_Combined, 
                  nclass = 3, 
                  graphs = FALSE, 
                  maxiter = 1000, 
                  nrep = 100)


AFAB_LCA_Plot <- ggplot(tidy(AFAB_LCA), aes(factor(class), estimate, fill = factor(outcome))) +
  geom_bar(stat = "identity", width = 1) +
  facet_wrap(~variable) +
  scale_fill_manual(values=c("#ed7b84", "#FADF75","#5bc2a3"), 
                    name = "Réponse", 
                    labels = c("Indésirable", "Neutre", "Désirable")) +
  scale_x_discrete(name = "Classe")


ggsave(
  "./plots/AFAB_LCA_Plot.png",
  plot = AFAB_LCA_Plot,
  scale = 2,
  dpi = 300,
  limitsize = TRUE
)
