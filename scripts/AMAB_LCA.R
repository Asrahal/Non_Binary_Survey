library(poLCA)
library(broom)
library(ggplot2)


AMAB_LCA_Formula <- cbind(Breast,
                          Skin,
                          Erection,
                          Testes,
                          Fat,
                          Facial_Hair,
                          Body_Hair,
                          Muscle) ~ 1
AMAB_LCA <- poLCA(AMAB_LCA_Formula, 
                  data = AMAB_Combined, 
                  nclass = 2, 
                  graphs = FALSE, 
                  maxiter = 1000, 
                  nrep = 100)
AMAB_LCA_Plot <- ggplot(tidy(AMAB_LCA), aes(factor(class), estimate, fill = factor(outcome))) +
  geom_bar(stat = "identity", width = 1) +
  facet_wrap(~variable)+
  scale_fill_manual(values=c("#ed7b84", "#FADF75","#5bc2a3"), 
                    name = "Réponse", 
                    labels = c("Indésirable", "Neutre", "Désirable")) +
  scale_x_discrete(name = "Classe")

ggsave(
  "./plots/AMAB_LCA_Plot.png",
  plot = AMAB_LCA_Plot,
  scale = 2,
  dpi = 300,
  limitsize = TRUE
)
