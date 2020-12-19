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

AFAB_Combined_LCA <- AFAB_Combined %>%
  dplyr::select(-Alopecia)
AFAB_LCA <- poLCA(AFAB_LCA_Formula, 
                  data = AFAB_Combined, 
                  nclass = 3, 
                  graphs = FALSE, 
                  maxiter = 1000, 
                  nrep = 100)


ggplot(tidy(AFAB_LCA), aes(factor(class), estimate, fill = factor(outcome))) +
  geom_bar(stat = "identity", width = 1) +
  facet_wrap(~variable)


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
                  nclass = 3, 
                  graphs = FALSE, 
                  maxiter = 1000, 
                  nrep = 100)
ggplot(tidy(AMAB_LCA), aes(factor(class), estimate, fill = factor(outcome))) +
  geom_bar(stat = "identity", width = 1) +
  facet_wrap(~variable)


for (i in 2:2) {
  max_ll <- -100000
  min_bic <- 10000
  for (j in 1:10) {
    res <- poLCA(AFAB_LCA_Formula, 
                 data = AFAB_Combined, 
                 nclass = i, 
                 tol = 1e-5,
                 nrep = 30)
    if(res$bic < min_bic) {
      min_bic <- res$bic
      LCA_best_model <- res
    }
  }
}
LCA_best_model
plot(LCA_best_model)



